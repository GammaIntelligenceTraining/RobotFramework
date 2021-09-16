*** Settings ***
Library    SeleniumLibrary


*** Variables ***


*** Keywords ***
Open Browser Maximize
    [Arguments]    ${userURL}   ${userBrowser}
    open browser    ${userURL}    ${userBrowser}
    maximize browser window

Close Browser Window
    ${Title}=    get title
    Log    ${Title}
    close browser

