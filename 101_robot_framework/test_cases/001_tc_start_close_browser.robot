# This is a comment


# Settings tab is used to add libraries, resources etc
*** Settings ***
Library    SeleniumLibrary


# Set of variables
*** Variables ***
${Browser}  Chrome
${URL}  http://www.thetestingworld.com/testings

# List of test cases
*** Test Cases ***
001_tc start close browser
    # open browser will open given browser and url
    open browser    ${URL}    ${Browser}
    # close browser will close browser window
    close browser