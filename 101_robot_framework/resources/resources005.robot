*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${Browser}    Chrome
${URL}    http://www.thetestingworld.com/testings

*** Keywords ***
Open Browser Maximize
    open browser    ${URL}    ${Browser}
    maximize browser window