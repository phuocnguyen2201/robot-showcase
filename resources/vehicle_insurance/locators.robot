*** Variables ***
${url}    https://sampleapp.tricentis.com/101/

${vehicle_insurance}    xpath=//a[@id='nav_automobile']
${truck_insurance}    xpath=//a[@id='nav_truck']
${motorcycle_insurance}    xpath=//a[@id='nav_motorcycle']
${camper_insurance}    xpath=//a[@id='nav_camper']

${make}    id=make
${engine_performance}    id=engineperformance
${date_of_manufacture}    id=dateofmanufacture

${number_of_seats}    id=numberofseats
${fuel_type}    id=fuel
${list_price}    id=listprice
${license_plate_number}    id=licenseplatenumber
${annual_mileage}    id=annualmileage

${next}    id=nextenterinsurantdata

${first_name}    id=firstname
${last_name}    id=lastname
${date_of_birth}    id=birthdate
${gender}    document.getElementById('gendermale').click()
${street_address}    id=streetaddress
${country}    id=country
${zip_code}    id=zipcode
${city}    id=city
${occupation}    id=occupation

${website}    id=website

${start_date}    id=startdate
${insurance_sum}    id=insurancesum
${merit_rating}    id=meritrating
${damage_insurance}    id=damageinsurance
${courtesy_car}    id=courtesycar
${next_product}    id=nextenterproductdata

${price_silver}    xpath=//input[@id='selectsilver']
${price_gold}    xpath=//input[@id='selectgold']
${price_platinum}    xpath=//input[@id='selectplatinum']
${price_ultimate}    xpath=//input[@id='selectultimate']

${email}    id=email
${phone}    id=phone
${username}    id=username
${password}    id=password
${confirm_password}    id=confirmpassword
${comments}    id=Comments

${next_price_option}    id=nextselectpriceoption
${next_quote}    id=nextsendquote

${send}    id=sendemail

${success_message}    xpath=//h2[text()='Sending e-mail success!']
${confirm_button}    xpath=//div[@class='sa-confirm-button-container']//button[@class='confirm']

