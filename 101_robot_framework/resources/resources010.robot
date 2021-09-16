*** Settings ***
Library    SeleniumLibrary
Library    ../external_keywords/user_keywords_010.py

*** Variables ***


*** Keywords ***
Open Browser Maximize
    open browser    http://www.thetestingworld.com/testings     Chrome
    maximize browser window
e
Close Browsr Window
    ${Title}=    get title
    Log    ${Title}
    close browser

Before Each Test Suite
    log    Before Each Test Suite

After Each Test Suite
    log    After Each Test Suite

Concatenate Username and Password
    [Arguments]    ${usr_name}    ${password}
    ${result}=  concatenate two values    ${usr_name}    ${password}
    Log    ${result}