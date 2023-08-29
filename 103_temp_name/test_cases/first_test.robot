*** Settings ***
Library  SeleniumLibrary
Resource  ../resources/main_res.robot
Variables  ../resources/variables.py

*** Variables ***
${url}  http://www.saucedemo.com

${standard_user}  standard_user
${password}  secret_sauce

*** Test Cases ***

Temp test case
    Open Browser  ${url}  ${browser}
    Login to website  ${standard_user}  ${password}
    FOR  ${item}  IN  @{LIST_ADD_BTNS}
        Click Button  id:${item}
        Sleep  2s
    END
    Close Browser

