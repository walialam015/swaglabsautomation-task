*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${FIRST_NAME}    wali
${LAST_NAME}     alam
${POSTAL_CODE}   234769

*** Keywords ***
Enter Checkout Information
    [Arguments]    ${first_name}=${FIRST_NAME}    ${last_name}=${LAST_NAME}    ${postal_code}=${POSTAL_CODE}
    Input Text    name=firstName    ${first_name}
    Input Text    name=lastName    ${last_name}
    Input Text    name=postalCode    ${postal_code}
    Click Button    name=continue