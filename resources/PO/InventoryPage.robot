*** Settings ***
Library    SeleniumLibrary
Library    Collections

*** Keywords ***
Add Multiple Products To Cart
    Click Button    name=add-to-cart-sauce-labs-backpack
    Click Button    name=add-to-cart-sauce-labs-bike-light

Sort Products By Price (Low To High)
    Select From List By Label    class=product_sort_container    Price (low to high)

Verify Products Sorted By Price (Low To High)
    ${prices}=    Get WebElements    class=inventory_item_price
    ${price_list}=    Create List
    FOR    ${price}    IN    @{prices}
        ${price_text}=    Get Text    ${price}
        ${price_value}=    Evaluate    float(${price_text.replace('$', '')})
        Append To List    ${price_list}    ${price_value}
    END
    ${sorted_price_list}=    Copy List    ${price_list}
    Sort List    ${sorted_price_list}
    Should Be Equal    ${price_list}    ${sorted_price_list}

Sort Products By Price (High To Low)
    Select From List By Label    class=product_sort_container    Price (high to low)

Verify Products Sorted By Price (High To Low)
    ${price_elements}=    Get WebElements    class=inventory_item_price
    ${price_list}=    Create List
    FOR    ${price}    IN    @{price_elements}
        ${price_text}=    Get Text    ${price}
        ${price_value}=    Evaluate    float(${price_text.replace('$', '')})
        Append To List    ${price_list}    ${price_value}
    END
    Log Many    ${price_list}    # Verify if price list is populated correctly
    ${sorted_price_list}=    Copy List    ${price_list}
     ${sorted_price_list}=    Evaluate    sorted($price_list, reverse=True)   
    Should Be Equal    ${price_list}    ${sorted_price_list}