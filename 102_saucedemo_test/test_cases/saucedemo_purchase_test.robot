*** Settings ***
Library    SeleniumLibrary
Resource    ../resources/resources.robot


*** Variables ***
# Website data
${URL}    https://www.saucedemo.com/
${Browser}    Chrome

# Login credentials
${StandardUser}    standard_user
${LockedOutUser}    locked_out_user
${ProblemUser}    problem_user
${PerformanceGlitchUser}    performance_glitch_user
${Pass}    secret_sauce

*** Test Cases ***
Standard User Test Case
    [Setup]    Open Browser and Maximize    ${URL}    ${Browser}
    [Teardown]    Close Browser Window
    Login To Website    ${StandardUser}    ${Pass}
    Add Product To Cart    xpath://*[@id="item_2_title_link"]/div    id:add-to-cart-sauce-labs-onesie
    Change Sorting Method    za
    Add Product To Cart    xpath://*[@id="item_4_title_link"]/div    id:add-to-cart-sauce-labs-backpack
    Change Sorting Method    hilo
    Add Product To Cart    xpath://*[@id="item_5_title_link"]/div    id:add-to-cart-sauce-labs-fleece-jacket
    Checkout Shopping Cart    Roman    Kutselepa    13625    95.01
    Logout From Website

Locked Out User Test Case
    [Setup]    Open Browser and Maximize    ${URL}    ${Browser}
    [Teardown]    Close Browser Window
    Login To Website    ${LockedOutUser}    ${Pass}
    Add Product To Cart    xpath://*[@id="item_2_title_link"]/div    id:add-to-cart-sauce-labs-onesie
    Change Sorting Method    za
    Add Product To Cart    xpath://*[@id="item_4_title_link"]/div    id:add-to-cart-sauce-labs-backpack
    Change Sorting Method    hilo
    Add Product To Cart    xpath://*[@id="item_5_title_link"]/div    id:add-to-cart-sauce-labs-fleece-jacket
    Checkout Shopping Cart    Roman    Kutselepa    13625    95.01
    Logout From Website

Problem User Test Case
    [Setup]    Open Browser and Maximize    ${URL}    ${Browser}
    [Teardown]    Close Browser Window
    Login To Website    ${ProblemUser}    ${Pass}
    Add Product To Cart    xpath://*[@id="item_2_title_link"]/div    id:add-to-cart-sauce-labs-onesie
    Change Sorting Method    za
    Add Product To Cart    xpath://*[@id="item_4_title_link"]/div    id:add-to-cart-sauce-labs-backpack
    Change Sorting Method    hilo
    Add Product To Cart    xpath://*[@id="item_5_title_link"]/div    id:add-to-cart-sauce-labs-fleece-jacket
    Checkout Shopping Cart    Roman    Kutselepa    13625    95.01
    Logout From Website

Performance Glitch User Test Case
    [Setup]    Open Browser and Maximize    ${URL}    ${Browser}
    [Teardown]    Close Browser Window
    Login To Website    ${PerformanceGlitchUser}    ${Pass}
    Add Product To Cart    xpath://*[@id="item_2_title_link"]/div    id:add-to-cart-sauce-labs-onesie
    Change Sorting Method    za
    Add Product To Cart    xpath://*[@id="item_4_title_link"]/div    id:add-to-cart-sauce-labs-backpack
    Change Sorting Method    hilo
    Add Product To Cart    xpath://*[@id="item_5_title_link"]/div    id:add-to-cart-sauce-labs-fleece-jacket
    Checkout Shopping Cart    Roman    Kutselepa    13625    95.01
    Logout From Website