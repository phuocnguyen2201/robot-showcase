*** Settings ***
Suite Setup    Setup Global Variables
Library    SeleniumLibrary
Library    XML
Resource    ../../resources/locators.robot
Resource    ../../resources/keys.robot
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
    I added "4" items
    ${total}    SeleniumLibrary.Get Element Count    ${todo-item}
    ${total}    Convert To String    ${total}
    Total active items should be "${total}"

Mark complete 1 item
    Mark 1 item
    Now completed tab should have 1 task done
    Total completed items should be