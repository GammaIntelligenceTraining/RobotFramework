*** Settings ***
Library    SeleniumLibrary

*** Variables ***


*** Keywords ***
Open Browser Maximize
    [Arguments]    ${user_URL}    ${input_browser}
    open browser    ${user_URL}    ${input_browser}
    maximize browser window
    ${Title}=    Get Title
    log    ${Title}
    # [[Return] will give result as a variable
    [Return]    ${Title}