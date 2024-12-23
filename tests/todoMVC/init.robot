*** Settings ***
Library    SeleniumLibrary
Resource    ../../resources/locators.robot
Resource    ../../resources/keys.robot
Resource    ../../keywords/keywords.robot

*** Test Cases ***
Add one item
    Open Browser    ${url}    firefox
    Wait Until Page Contains Element    ${input-locator}
    Input Text    ${input-locator}    text
    Press Key    ${input-locator}    ${enter}
    Wait Until Element Is Visible    ${todo-item}

Add many items
    I added "4" items