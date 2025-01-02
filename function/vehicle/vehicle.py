import random

def maker():
    return random.randint(1, 15)

def engine_performance():
    return random.randint(1, 2000)

def date_of_manufacture():
    return random.choice(['01/01/1990', '02/02/1991', '03/03/1992', '04/04/1993', '05/05/1994', '06/06/1995', '07/07/1996', '08/08/1997', '09/09/1998', '10/10/1999'])

def number_of_seats():
    return random.randint(1, 9)

def fuel_type():
    return random.choice(['Petrol', 'Diesel', 'Electric Power', 'Gas', 'Other'])

def list_price():
    return random.randint(500, 100000)

def license_plate_number():
    return random.choice(['ABC-1234', 'DEF-5678', 'GHI-9101', 'JKL-1121', 'MNO-3141'])

def annual_mileage():
    return random.randint(100, 100000)

def first_name():
    return random.choice(['John', 'Jane', 'Alice', 'Bob', 'Charlie', 'David', 'Eve', 'Frank', 'Grace', 'Henry'])

def last_name():
    return random.choice(['Smith', 'Johnson', 'Williams', 'Jones', 'Brown', 'Davis', 'Miller', 'Wilson', 'Moore', 'Taylor'])

def date_of_birth():
    return random.choice(['01/01/1990', '02/02/1991', '03/03/1992', '04/04/1993', '05/05/1994', '06/06/1995', '07/07/1996', '08/08/1997', '09/09/1998', '10/10/1999'])

def street_address():
    return random.choice(['123 Main St', '456 Elm St', '789 Oak St', '101 Pine St', '112 Maple St', '314 Cedar St', '415 Walnut St', '516 Birch St', '617 Spruce St', '718 Ash St'])

def country():
    return random.choice(['United States', 'Canada', 'Mexico', 'Brazil', 'Argentina', 'Chile', 'Peru', 'Colombia', 'Viet Nam', 'Ecuador'])

def zip_code():
    return random.choice(['12345', '23456', '34567', '45678', '56789', '67890', '78901', '89012', '90123', '01234'])

def city():
    return random.choice(['New York', 'Los Angeles', 'Chicago', 'Houston', 'Phoenix', 'Philadelphia', 'San Antonio', 'San Diego', 'Dallas', 'San Jose'])

def occupation():
    return random.choice(['Employee', 'Public Official', 'Farmer', 'Unemployed', 'Selfemployed'])

def hobbies():
    return random.choice(['speeding', 'bungeejumping', 'cliffdiving', 'skydiving', 'other'])

def merit_rating():
    return random.randint(1, 18)

def damage_insurance():
    return random.randint(1, 3)

def courtesy_car():
    return random.choice(['Yes', 'No'])

def start_date():
    return random.choice(['01/01/2026', '02/02/2027', '03/03/2028', '04/04/2029', '05/05/2030', '06/06/2031', '07/07/2032', '08/08/2033', '09/09/2034', '10/10/2035'])

def optional_products():
    return random.choice(['EuroProtection', 'LegalDefenseInsurance'])

def price_selection():
    return random.choice(['selectsilver', 'selectgold','selectplatinum','selectultimate'])

def emails():
    return random.choice(['something@gmail.com', 'nothing@yahoo.com', 'wth@hotmail.com'])

def phone_numbers():
    return random.choice(['1234567890', '2345678901', '3456789012'])

def username():
    return random.choice(['user1', 'user2', 'user3', 'user4', 'user5'])

def password():
    return random.choice(['pAssword1', 'pAssword2', 'pAssword3', 'pAssword4', 'pAssword5'])

