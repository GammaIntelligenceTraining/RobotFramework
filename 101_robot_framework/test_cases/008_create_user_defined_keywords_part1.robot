*** Settings ***
Library    SeleniumLibrary
Resource    ../resources/resources008.robot

*** Variables ***
${Browser}    Chrome
${URL}    http://www.thetestingworld.com/testings

*** Test Cases ***

Robot Fetch Data
    Before Each Test Suite
    Create Folder at Runtime
    Open Browser Maximize
    ${ActualURL}=    get location
    Log    ${ActualURL}
    ${PageHTML}=    get source
    Log    ${PageHTML}
    ${Attr}    get element attribute    name:fld_username    class
    log    ${Attr}
    ${cnt}    get element count    class:field
    log    ${cnt}
    After Each Test Suite
