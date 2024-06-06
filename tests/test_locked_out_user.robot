*** Settings ***
Documentation  test locked out user suite

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
${USERNAME}      locked_out_user
${PASSWORD}      secret_sauce
    

*** Test Cases ***
User Locked Out From Platform

    # Steps to execute the test case
    Login As User    ${USERNAME}    ${PASSWORD}   
    Sleep    3s
    Verify Login Failed for locked out user
    Sleep    3s
    
