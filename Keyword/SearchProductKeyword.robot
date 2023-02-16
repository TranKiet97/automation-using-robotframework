*** Settings ***
Library     SeleniumLibrary
Library    XML
Variables    ../Locator/ProductPageLocator.py
Variables   ../Locator/EditProductPageLocator.py

*** Keywords ***
Click on Collapse Button
    Click Element    ${ProductPage.collapseBtn}
Check the Search Form be Visible
    Element Should Be Enabled    ${ProductPage.searchBody}
Check the Search Form be Unvisible
    Wait Until Element Is Not Visible    ${ProductPage.searchBody}
Input Search Product Name
    [Arguments]     ${product_name}
    Input Text    ${ProductPage.searchProductName}    ${product_name}
Click Search Product Button
    Click Button    ${ProductPage.searchProductBtn}
Verified the Product be Displayed on Result Table
    [Arguments]     ${product_name}
    Element Text Should Be    ${ProductPage.productNameCol}    ${product_name}
Verified Not any Product be Displayed on Result Table
    [Arguments]     ${product_name}
    Element Text Should Be    ${ProductPage.nonDataCol}    ${product_name}
Input Product SKU
    [Arguments]     ${product_sku}
    Input Text    ${ProductPage.goDirectlyToSKU}    ${product_sku}
Click Go Button
    Click Button    ${ProductPage.goBtn}
Verified the Edit Product Details Page be Displayed
    [Arguments]     ${product_sku}
    Element Should Be Visible    ${EditProductPage.editProductHeader}
    Element Attribute Value Should Be    ${EditProductPage.SKU}    value    ${product_sku}