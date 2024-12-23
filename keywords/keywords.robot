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
    