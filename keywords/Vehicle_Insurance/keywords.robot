*** Settings ***
Resource    ../../resources/vehicle_insurance/locators.robot
Library    ../../function/vehicle/vehicle.py
Library    SeleniumLibrary

*** Keywords ***
Open Application
    Open Browser    ${url}    firefox

Enter Vehicle Data
    Click Element    ${vehicle_insurance}
    ${maker}=    Maker
    Select From List By Index    ${make}    ${maker}
    Input Text    ${engine_performance}    2000
    Input Text    ${date_of_manufacture}    01/01/2000
    Select From List By Label    ${number_of_seats}    2
    Select From List By Label    ${fuel_type}    Diesel
    Input Text    ${list_price}    10000
    Input Text    ${license_plate_number}    123456
    Input Text    ${annual_mileage}    10000