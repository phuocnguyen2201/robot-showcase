*** Settings ***
Library    SeleniumLibrary
*** Test Cases ***
Open Browser Test
    Open Browser     https://github.com/ chrome
    Close All Browsers