*** Settings ***
Library    SeleniumLibrary
Library    ../external_keywords/user_keywords_009.py

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
    [Arguments]    ${foldername}    ${subfoldername}
    create_folder    ${foldername}
    create_sub_folder    ${subfoldername}
    Log    "Task Done Successfully"