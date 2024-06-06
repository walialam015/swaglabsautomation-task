*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}       https://www.saucedemo.com/

*** Keywords ***
Login As User
    [Arguments]    ${username}    ${password}    
    Input Text    name=user-name    ${username}
    Input Text    name=password    ${password}
    Click Button    name=login-button

Logout
    Click Element  id=react-burger-menu-btn
    Sleep  3s  # Wait for the menu to open
    Click Element  id=logout_sidebar_link
    Wait Until Element Is Visible  id=user-name
     

Verify Login is sucessfull
    Wait Until Page Contains Element  class=inventory_list

Verify Logout is sucessfull   
    Wait Until Page Contains Element  class=inventory_list
    Logout

Verify Login Failed for locked out user
    Element Text Should Be    class=error-message-container    Epic sadface: Sorry, this user has been locked out.

Verify Login Failed with null username and null password
    Element Text Should Be    class=error-message-container    Epic sadface: Username is required

Verify Login Failed with username and null password
    Element Text Should Be    class=error-message-container    Epic sadface: Password is required
