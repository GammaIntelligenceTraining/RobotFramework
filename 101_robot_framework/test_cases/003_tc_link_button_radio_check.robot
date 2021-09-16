*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${Browser}  Chrome
${URL}  http://www.thetestingworld.com/testings

*** Test Cases ***
Robot first test case
    open browser    ${URL}    ${Browser}
    maximize browser window

    # select radio button need two arguments [name, value]
    select radio button    add_type    office

    # checkbox can be selected with only one argument
    select checkbox    name:terms
    go back

    #click commands need only locator as an argument
    click link    xpath://*[@id="tab-content1"]/form/div/em/a
    click link    xpath://*[@id="popup1"]/a
    click button    xpath://*[@id="tab-content1"]/form/div/input[2]
    close browser