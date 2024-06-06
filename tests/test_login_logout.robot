*** Settings ***
Documentation  test login and logout suite

# Importing necessary resource files for different page objects and common keywords
Resource       ../resources/PO/LoginPage.robot
Resource       ../resources/PO/InventoryPage.robot
Resource       ../resources/PO/CartPage.robot
Resource       ../resources/PO/CheckoutPage.robot
Resource       ../resources/PO/FinishPage.robot
Resource       ../resources/common.robot

# Setting up and tearing down the test suite
Test Setup     common.Begin Web Test
Test Teardown  common.End Web Test


*** Variables ***

# User credentials for login
${USERNAME}      standard_user
${PASSWORD}      secret_sauce 

*** Test Cases ***
Verify Standard user Login

    #Steps to execute the test case
    Login As User    ${USERNAME}    ${PASSWORD}   
    Sleep    3s
    Verify Login is sucessfull
    Sleep    3s

Verify Standard user Logout

    #Steps to execute the test case
    Login As User    ${USERNAME}    ${PASSWORD}   
    Sleep    3s
    Verify Logout is sucessfull
    Sleep    3s
    
