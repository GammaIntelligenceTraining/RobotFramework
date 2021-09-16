*** Settings ***
Library    SeleniumLibrary
# External python file is same as library
Library    ../external_keywords/user_keywords_008.py

*** Variables ***


*** Keywords ***
Open Browser Maximize
    open browser    http://www.thetestingworld.com/testings     Chrome
    maximize browser window

Close Browser Window
    ${Title}=    get title
    Log    ${Title}
    close browser

Before Each Test Suite
    log    Before Each Test Suite

After Each Test Suite
    log    After Each Test Suite

Create Folder at Runtime
    create_folder
    create_sub_folder
    Log    "Task Done Successfully"