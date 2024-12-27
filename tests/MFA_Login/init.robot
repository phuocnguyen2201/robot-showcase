*** Settings ***
Resource    ../../resources/mfa/locators.robot
Library    ../../function/mfa/totp.py
Library    SeleniumLibrary

*** Test Cases ***
Login
    Open Browser    ${url}    firefox
    Wait Until Page Contains Element    ${username}
    Input Text    ${username}    demo_user
    Input Password    ${password}    secret_pass
    ${totp}    Get TOTP    GAXG2MTEOR3DMMDG
    Input Text    ${mfa}    ${totp}
    Click Element    ${btn_sign_in}
    Wait Until Page Contains Element    ${welcome_message}
