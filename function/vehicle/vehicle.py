import random

def maker():
    return random.randint(1, 15)

def number_of_seat():
    return random.randint(1, 9)

def fuel_type():
    return random.choice(['Petrol', 'Diesel', 'Electric Power', 'Gas', 'Other'])

def vehicle_price():
    return random.randint(500, 100000)

def license_plate():
    return random.choice(['ABC-1234', 'DEF-5678', 'GHI-9101', 'JKL-1121', 'MNO-3141'])

def annual_mileage():
    return random.randint(00, 100000)

def first_name():
    return random.choice(['John', 'Jane', 'Alice', 'Bob', 'Charlie', 'David', 'Eve', 'Frank', 'Grace', 'Henry'])

def last_name():
    return random.choice(['Smith', 'Johnson', 'Williams', 'Jones', 'Brown', 'Davis', 'Miller', 'Wilson', 'Moore', 'Taylor'])

def dob():
    return random.choice(['01/01/1990', '02/02/1991', '03/03/1992', '04/04/1993', '05/05/1994', '06/06/1995', '07/07/1996', '08/08/1997', '09/09/1998', '10/10/1999'])

def street_address():
    return random.choice(['123 Main St', '456 Elm St', '789 Oak St', '101 Pine St', '112 Maple St', '314 Cedar St', '415 Walnut St', '516 Birch St', '617 Spruce St', '718 Ash St'])

def country():
    return random.choice(['USA', 'Canada', 'Mexico', 'Brazil', 'Argentina', 'Chile', 'Peru', 'Colombia', 'Venezuela', 'Ecuador'])

def zip_code():
    return random.choice(['12345', '23456', '34567', '45678', '56789', '67890', '78901', '89012', '90123', '01234'])

def city():
    return random.choice(['New York', 'Los Angeles', 'Chicago', 'Houston', 'Phoenix', 'Philadelphia', 'San Antonio', 'San Diego', 'Dallas', 'San Jose'])

def occupation():
    return random.choice(['Doctor', 'Engineer', 'Lawyer', 'Teacher', 'Nurse', 'Police Officer', 'Firefighter', 'Chef', 'Scientist', 'Artist'])

def hobbies():
    return random.choice(['Speeding', 'Bungee Jumping', 'Cliff Diving', 'Skydiving', 'Other'])

