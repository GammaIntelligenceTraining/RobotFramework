*** Settings ***
Library    SeleniumLibrary
Resource    ../resources/resources005.robot


*** Variables ***

*** Test Cases ***
Robot Test Case
    Open Browser Maximize
    input text    name:fld_username    Hello world