*** Settings ***
Library    SeleniumLibrary
Resource    ../resources/resources006.robot


*** Variables ***
${Browser}    Chrome
${URL}      http://www.thetestingworld.com/testings


*** Test Cases ***
Robot Test Case
    ${Res}=    Open Browser Maximize    ${URL}    ${Browser}
    Log    ${Res}
    input text    name:fld_username    ${Res}
