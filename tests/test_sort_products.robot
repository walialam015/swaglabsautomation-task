*** Settings ***
Documentation  test sorting product suite

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
Customer Sorts Product Items 
    # Steps to execute the test case
    Login As User    ${USERNAME}    ${PASSWORD}
    Sleep    3s    

    # Verifying product sorting from low to high
    Sort Products By Price (Low To High)
    Verify Products Sorted By Price (Low To High)
    Sleep    3s

    # Verifying product sorting from high to low
    Sort Products By Price (High To Low)
    Verify Products Sorted By Price (High To Low)
