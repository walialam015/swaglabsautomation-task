*** Settings ***
Library    SeleniumLibrary

*** Keywords ***
Proceed To Checkout
    Click Link    class=shopping_cart_link
    Click Button    name=checkout