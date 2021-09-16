*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${Browser}  Chrome
${URL}  http://www.thetestingworld.com/testings

*** Test Cases ***
Robot first test case
    open browser    ${URL}    ${Browser}
    maximize browser window
    Enter Username Password Email    test_user    test_mail@example.com    123456
    close browser

# Create userdefined keywords
*** Keywords ***
Enter Username Password Email
    # [[Arguments] is a list of needed arguments to run keyword
    [Arguments]    ${username}    ${email}    ${password}
    input text    name:fld_username    ${username}
    input text    name:fld_email    ${email}
    input password    name:fld_password    ${password}
    sleep    5