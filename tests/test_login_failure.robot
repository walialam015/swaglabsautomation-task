*** Settings ***
Documentation  test login failuer suite

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
${NULL_VALUE}    

*** Test Cases ***
Verify Login Failed with null username and null password

    #Steps to execute the test case
    Login As User    ${NULL_VALUE}    ${NULL_VALUE}   
    Sleep    3s
    Verify Login Failed with null username and null password
    Sleep    3s

Verify Login Failed with username and null password

    # Steps to execute the test case
    [Documentation]  Test that login fails when username is provided but password is null.
    Login As User    ${USERNAME}    ${NULL_VALUE}   
    Sleep    3s
    Verify Login Failed with username and null password
    Sleep    3s
    
