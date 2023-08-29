*** Settings ***

Library  SeleniumLibrary
Resource  main_res.robot

*** Variables ***
${browser}  Firefox

*** Keywords ***

Login to website
    [Arguments]  ${user_name}  ${password}
    Input Text  id:user-name  ${user_name}
    Input Password  id:password  ${password}
    Click Button  id:login-button

Check basket banner
    Element Text Should Be  xpath://*[@id="shopping_cart_container"]/a  ${EMPTY}
    Click Button  id:add-to-cart-sauce-labs-backpack
    Element Text Should Be  xpath://*[@id="shopping_cart_container"]/a/span  ${1}
    Click Button  id:remove-sauce-labs-backpack
    Element Text Should Be  xpath://*[@id="shopping_cart_container"]/a  ${EMPTY}