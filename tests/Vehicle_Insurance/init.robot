*** Settings ***
Resource    ../../resources/vehicle_insurance/locators.robot
Resource    ../../keywords/Vehicle_Insurance/keywords.robot
Library    SeleniumLibrary

*** Test Cases ***

Running correct test case
    Open Application
    Enter Vehicle Data
    Enter Insurance Data
    Enter Product Data
    Select Price Option
    Enter Personal Information