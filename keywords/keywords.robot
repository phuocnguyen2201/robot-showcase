*** Settings ***
Library    SeleniumLibrary
Resource    ../resources/locators.robot
Resource    ../resources/keys.robot

*** Keywords ***

Open Todo App
    Open Browser    ${url}    firefox

I added 1 item "${text}"
    Wait Until Page Contains Element    ${input-locator}
    Input Text    ${input-locator}    ${text}
    Press Key    ${input-locator}    ${enter}
    Wait Until Element Is Visible    ${todo-item}


I added "${count}" items
    FOR    ${index}    IN RANGE    ${count}
        I added 1 item "testing number ${index}"

    END
Total completed items should be
    ${size}    SeleniumLibrary.Get Element Count    ${todo-item-checked}
    ${size}    Convert To String    ${size}
    Should Be Equal    ${size}    1

Total active items should be "${total}"
    Wait Until Page Contains Element    ${total-item}
    ${text}    Get Text    ${total-item}
    ${total}    Convert To String    ${total}
    Should Contain    ${text}     ${total}

Mark 1 item
    Wait Until Element Is Enabled    ${active-items}
    Click Element    ${active-items}

Now completed tab should have 1 task done
    Click Element    ${completed-tab}
    Wait Until Page Contains Element    ${todo-item-checked}
    Wait Until Element Is Visible     ${todo-item-checked}
