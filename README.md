# TODO App Testing with Robot Framework

This repo contains simple test suite for a Todo application using Robot framework.

##Overview
The Todo app is well-known as a task management application people can add, mark and delete tasks.
This repo demonstrate simple automated test case for the app.

##Installation
1. Clone the repository:
    git clone https://github.com/phuocnguyen2201/robot-showcase.git
2. If your machine don't have python and robot framework yet:
    brew install python (MacOS)
    pip install robotframework

##Running the test
In the terminal cd to the ../tests/
robot [your desired test suite]

##Folder structure
```
project-root/
├── keywords/               # Contains all keywords
│   └── keywords.robot      # Contain keywords
├── tests/                  # Contains all test cases
│   ├── todoMVC/            # todo test cases
│   │   └── init.robot
├── resources/              # Shared resources like keywords, variables
│   ├── keys.robot          # Store command keys
│   ├── locators.robot      # All elements locator
│   └── targets.robot       # Environment testing (Eg. URLS)
├── variables/              # Shared resources variables
├── README.md               # Documentation for the project
└── robotframework.log 
```
