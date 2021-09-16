*** Settings ***
Library    SeleniumLibrary
Resource    ../resources/resources007.robot
Documentation    This is a message about test file.
Test Setup    Open Browser Maximize    ${URL}    ${Browser}
Test Teardown    Close Browser Window

*** Variables ***
${Browser}    Chrome
${URL}    http://www.thetestingworld.com/testings

*** Test Cases ***
Robot Test Case
    # [Setup] is used as a start of a test
    [Setup]    Open Browser Maximize    ${URL}    ${Browser}
    # [Teardown] is used as a finish of a test
    [Teardown]    Close Browser Window
    input text    name:fld_username     Testing
    input text    name:fld_email    testmail@example.com
    input text    name:fld_password     123456

Robot Next Test Case
    [Setup]    Open Browser Maximize    ${URL}    ${Browser}
    [Teardown]    Close Browser Window
    select radio button    add_type    office