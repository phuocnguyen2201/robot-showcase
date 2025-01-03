# App Testing with Robot Framework

This repo contains simple test suite for a Todo application, a Resful API, a Web application using Robot framework.

##Overview
This repo demonstrate simple automated test cases for all the apps.

##Installation
1. Clone the repository:
    git clone https://github.com/phuocnguyen2201/robot-showcase.git
2. If your machine don't have python and robot framework yet:
    brew install python (MacOS)
    pip install robotframework

##Running the test

    In the terminal cd to the /tests folder and using the command robot [your desired test suite]
    Exapmle: robot todoMVC.

##Folder structure
```
project-root/
├── keywords/                       # Contains all keywords
│   ├── Vehicle_Insurance/          # todo test cases
│   │   └── keywords.robot          # Keywords for Vehicle test suite
│   └── keywords.robot              # Contain keywords
├── tests/                          # Contains all test suite
│   ├── todoMVC/                    # todo test suite
│   │   └── init.robot
│   ├── MFA_login/                  # MFA test suite
│   │   └── init.robot
│   ├── restful_booker/             # Booker test suite
│   │   └── init.robot
│   ├── Vehicle_Insurance/          # Vehicle Insurance test suite
│   │   └── init.robot
├── resources/                      # Shared resources like keywords, variables
│   ├── booker/                     # Booker resources
│   │   └── targer.robot
│   ├── mfa/                        # MFA resources
│   │   └── locators.robot
│   ├── vehicle_insurance/          # Vehicle Insurance resources
│   │   └── locators.robot
│   ├── keys.robot                  # Store command keys
│   ├── locators.robot              # All elements locator
│   └── targets.robot               # Environment testing (Eg. URLS)
├── function/                       # Shared extend functions
│   ├── mfa/                        # Contains functions for MFA
│   │   └── totp.py                 # Get the TOTP from the APP.
│   ├── utility/                    # Contains common functions
│   │   ├── command.py              # Function that running JavaScript.
│   │   └── random_by_range.py      # Common functions for all test suite 
│   ├── vehicle/                    # Contains function for vehicle
│   │   └── vehicle.py              # All functions using Python for vehicle test suite
├── keys.robot                      # Store command keys
├── README.md                       # Documentation for the project
└── robotframework.log 
```
