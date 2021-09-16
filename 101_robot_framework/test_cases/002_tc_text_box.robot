*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${Browser}  Chrome
${URL}  http://www.thetestingworld.com/testings

*** Test Cases ***
Robot first test case
    open browser    ${URL}    ${Browser}
    maximize browser window
    # input text will find element and insert text into it
    input text    name:fld_username    TestName
    input text    xpath://*[@id="tab-content1"]/form/input[3]    test_mail@example.com
    # clear element text will clear a textfield
    clear element text    name:fld_username
    close browser