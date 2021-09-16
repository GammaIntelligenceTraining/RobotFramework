*** Settings ***
Library    SeleniumLibrary
Resource    ../resources/resources009.robot

*** Variables ***
${Browser}    Chrome
${URL}    http://www.thetestingworld.com/testings

*** Test Cases ***
Robot Fetch Data
    Create Folder at Runtime    001_test    101_cache
    Open Browser Maximize


