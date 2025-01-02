*** Settings ***
Resource    ../../resources/vehicle_insurance/locators.robot
Library    ../../function/vehicle/vehicle.py
Library    ../../function/utility/command.py
Library    SeleniumLibrary

*** Keywords ***
Open Application
    Open Browser    ${url}    firefox

Enter Vehicle Data
    Click Element    ${vehicle_insurance}
    
    ${maker}=    Maker
    Select From List By Index    ${make}    ${maker}

    ${engine_performance_data}=    Engine Performance
    Input Text    ${engine_performance}    ${engine_performance_data}

    ${date_of_manufacture_data}=    Date of Manufacture
    Input Text    ${date_of_manufacture}    ${date_of_manufacture_data}

    ${number_of_seats_data}=    Number of Seats
    Select From List By Label    ${number_of_seats}    ${number_of_seats_data}

    ${fuel_type_data}=    Fuel Type
    Select From List By Label    ${fuel_type}    ${fuel_type_data}

    ${list_price_data}=    List Price
    Input Text    ${list_price}    ${list_price_data}

    ${license_plate_number_data}=    License Plate Number
    Input Text    ${license_plate_number}    ${license_plate_number_data}

    ${annual_mileage_data}=    Annual Mileage
    Input Text    ${annual_mileage}    ${annual_mileage_data}

    Click Button    ${next}

Enter Insurance Data
    
    ${first_name_data}=    First Name
    Input Text    ${first_name}    ${first_name_data}

    ${last_name_data}=    Last Name
    Input Text    ${last_name}    ${last_name_data}

    ${date_of_birth_data}=    Date of Birth
    Input Text    ${date_of_birth}    ${date_of_birth_data}
    

    ${street_address_data}=    Street Address
    Input Text    ${street_address}    ${street_address_data}

    ${country_data}=    Country
    Select From List By Label    ${country}    ${country_data}

    ${zip_code_data}=    Zip Code
    Input Text    ${zip_code}    ${zip_code_data}

    ${city_data}=    City
    Input Text    ${city}    ${city_data}

    ${occupation_data}=    Occupation
    Select From List By Label    ${occupation}    ${occupation_data}

    Execute JavaScript    ${gender}
    
    ${hobbies_data}=    Hobbies
    Execute Javascript    document.getElementById('${hobbies_data}').click()
    
    Scroll Element Into View    locator=${next_product}
    Click Element    ${next_product}

Enter Product Data
    ${start_date_data}=    Start Date
    Input Text    ${start_date}    ${start_date_data}

    ${insurance_sum_data}=    Number of seats
    Select From List By Index    ${insurance_sum}    ${insurance_sum_data}

    ${merit_rating_data}=    Merit Rating
    Select From List By Index    ${merit_rating}    ${merit_rating_data}

    ${damage_insurance_data}=    Damage Insurance
    Select From List By Index    ${damage_insurance}    ${damage_insurance_data}
    
    ${optional_products}=    Optional Products
    Execute Javascript    document.getElementById('${optional_products}').click()

    ${courtesy_car_data}=    Courtesy Car
    Select From List By Label    ${courtesy_car}    ${courtesy_car_data}

    Scroll Element Into View    locator=${next_price_option}
    Click Element    ${next_price_option}

Select Price Option    
    ${price_data}=    price_selection
    Execute Javascript    document.getElementById('${price_data}').click()

    Scroll Element Into View    locator=${next_quote}
    Click Element    ${next_quote}

Enter Personal Information
    ${email_data}=    Emails
    Input Text    ${email}    ${email_data}

    ${phone_data}=    phone_numbers
    Input Text    ${phone}    ${phone_data}

    ${username_data}=    Username
    Input Text    ${username}    ${username_data}

    ${password_data}=    Password
    Input Text    ${password}    ${password_data}

    Input Text    ${confirm_password}    ${password_data}

    Scroll Element Into View    locator=${send}
    Click Element    ${send}

    Wait Until Page Contains Element    locator=${success_message}    timeout=10s