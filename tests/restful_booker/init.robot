*** Settings ***
Library    RequestsLibrary
Library    Collections
Library    ../../function/utility/random_by_range.py
Library    SeleniumLibrary
Resource    ../../resources/booker/target.robot
Suite Setup    Admin Mode
*** Variables ***

${start}    1
${end}    293

*** Test Cases ***
Get Bookings
    ${response}    GET    ${url}
    Status Should Be    200
    Log List    ${response.json()}

Get a Booking
    ${response}    GET    ${url}

    ${id}    Random By Obj    ${response.json()}

    ${response}    GET    ${url}/${id}
    Status Should Be    200

Create a Booking
    ${booking_date}    Create Dictionary    checkin=2021-01-01    checkout=2022-01-01
    ${data}    Create Dictionary    firstname=Myname    lastname=Doe    totalprice=100    depositpaid=true    bookingdates=${booking_date}
    ${response}    POST    ${url}    json=${data}
    ${id}    Set Variable    ${response.json()}[bookingid]
    Status Should Be    200
    
    ${response}    GET    ${url}/${id}
    Status Should Be    200
    Log    message: ${response.json()}

Update a Booking
    ${response}    GET    ${url}
    Status Should Be    200
    ${id}    Random By Obj    obj=${response.json()}
    
    ${booking_date}    Create Dictionary    checkin=2023-01-01    checkout=2024-01-01
    ${data}    Create Dictionary    firstname=Myname    lastname=MyLastName    totalprice=1000    depositpaid=false    bookingdates=${booking_date}

    ${response}    PUT    ${url}/${id}    json=${data}

    ${response}    GET    ${url}/${id}
    Status Should Be    200
    Log    ${response.json()}

Update Partial a Booking
    ${response}    GET    ${url}
    Status Should Be    200
    ${id}    Random By Obj    obj=${response.json()}
    
    ${data}    Create Dictionary    totalprice=9999    depositpaid=true

    ${response}    PATCH    ${url}/${id}    json=${data}

    ${response}    GET    ${url}/${id}
    Status Should Be    200
    Log    ${response.json()}
    
Delete Booking
    ${response}    GET    ${url}
    Status Should Be    200
    ${id}    Random By Obj    obj=${response.json()}
    
    ${response}    DELETE    ${url}/${id}
    Status Should Be    201
    Log    ${response.json()}
    
    ${response}    GET    ${url}/${id}
    Status Should Be    404
    Log    ${response.json()}
    
*** Keywords ***
Admin Mode
    ${body}    Create Dictionary    username=admin    password=password123
    ${response}    POST    url=https://restful-booker.herokuapp.com/auth    json=${body}
    ${token}    Set Variable    ${response.json()}[token]
    Set Suite Variable    ${token}