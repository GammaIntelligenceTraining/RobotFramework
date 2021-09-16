*** Settings ***
Library    SeleniumLibrary
Resource    ../resources/resources010.robot

*** Variables ***
${Browser}    Chrome
${URL}    http://www.thetestingworld.com/testings

*** Test Cases ***
Robot Fetch Data
    Concatenate Username and Password    user1      asd123asd
    Open Browser Maximize


