*** Settings ***
Library    SeleniumLibrary

*** Keywords ***
Finish Purchase
    Click Button    name=finish

Verify Purchase Success
    Element Text Should Be    class=complete-header    Thank you for your order!