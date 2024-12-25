*** Settings ***
Suite Setup    Setup Global Variables
Library    SeleniumLibrary
Library    XML
Library    OperatingSystem
Resource    ../../resources/locators.robot
Resource    ../../resources/keys.robot
Resource    ../../resources/target.robot
Resource    ../../keywords/keywords.robot
*** Keywords ***
Setup Global Variables
    Set Global Variable    ${total-count}    0
*** Test Cases ***
Add one item
    Open Browser    ${url}    firefox
    Wait Until Page Contains Element    ${input-locator}
    Input Text    ${input-locator}    text
    Press Key    ${input-locator}    ${enter}
    Wait Until Element Is Visible    ${todo-item}
    Close All Browsers

Add many items
    Open Todo App
    when I added "4" items
    ${total}    SeleniumLibrary.Get Element Count    ${todo-item}
    ${total}    Convert To String    ${total}
    then Total active items should be "${total}"

Mark complele an item
    when Mark 1 item
    then Completed tab
    Close All Browsers

Full workflow todo app
    FOR    ${url}    IN    @{urls}
        Open Multiple Todo App    ${url}

        I added "3" items
        Total active items should be "3"

        Mark 1 item
        Completed tab


        Clear completed
    END

END
    Close All Browsers