*** Settings ***
Library  SeleniumLibrary

*** Variables ***

# Base URL and browser type
${URL}       https://www.saucedemo.com/
${BROWSER}   chrome 

*** Keywords ***

# Keyword to set up the test suite
Begin Web Test
    Open Browser  ${URL}    ${BROWSER}
    Maximize Browser Window

# Keyword to tear down the test suite
End Web Test
    Close Browser