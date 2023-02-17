*** Settings ***
Library     SeleniumLibrary
Variables    ../Locator/AddNewProductPageLocator.py
Variables   ../Locator/ProductPageLocator.py

*** Keywords ***
Click Add New Product
    Click Element    ${ProductPage.addNewBtn}

Verified Setting Product Button
    Element Should Be Visible    ${AddNewProductPage.settingBtn}

Verified Save Product Button
    Element Should Be Visible    ${AddNewProductPage.saveBtn}

Verified Save and Contiunue Edit Product Button
    Element Should Be Visible    ${AddNewProductPage.saveContEditBtn}

Verified Toggle Button
    Element Should Be Visible    ${AddNewProductPage.toggle}

Verified Gift Card, Rental Card, Down loadable Product Card Invisible
    Element Should Not Be Visible    ${AddNewProductPage.giftCard}
    Element Should Not Be Visible    ${AddNewProductPage.rentalCard}
    Element Should Not Be Visible    ${AddNewProductPage.downloadableProductCard}

Click Toggle Button
    Click Element    ${AddNewProductPage.toggle}

Verified Gift Card, Rental Card, Down loadable Product Card Visible
    Element Should Be Visible    ${AddNewProductPage.giftCard}
    Element Should Be Visible    ${AddNewProductPage.rentalCard}
    Element Should Be Visible    ${AddNewProductPage.downloadableProductCard}

Input Product Name
    [Arguments]     ${product_name}
    Input Text    ${AddNewProductPage.txtProductName}    ${product_name}

Input Short Description
    [Arguments]     ${short_description}
    Input Text    ${AddNewProductPage.txtShortDescription}    ${short_description}

Input Product SKU
    [Arguments]     ${product_sku}
    Input Text    ${AddNewProductPage.SKU}    ${product_sku}

Input Product Price
    [Arguments]     ${product_price}
    Execute Javascript    document.querySelector(`${AddNewProductPage.txtPrice}`).value = ${product_price}

Select Tax Exempt
    Select Checkbox    ${AddNewProductPage.taxExemptCheckbox}

Input Shipping Information
    [Arguments]     ${product_weight}   ${product_length}   ${product_width}    ${product_height}
    Execute Javascript    document.querySelector(`${AddNewProductPage.shipWeight}`).value = ${product_weight}
    Execute Javascript    document.querySelector(`${AddNewProductPage.shipLength}`).value = ${product_length}
    Execute Javascript    document.querySelector(`${AddNewProductPage.shipWidth}`).value = ${product_width}
    Execute Javascript    document.querySelector(`${AddNewProductPage.shipHeight}`).value = ${product_height}

Select Inventory Method
    [Arguments]     ${inventory_method}
    Select From List By Label    ${AddNewProductPage.inventoryMethod}   ${inventory_method}
    
Upload Avatar For Product
    Choose File    ${AddNewProductPage.uploadAvatarButton}    ${EXECDIR}${/}Resource${/}avatar.png

Verified Upload Avatar Successfully
    Wait Until Element Is Visible    ${AddNewProductPage.uploadAvatarSuccess}

Click Save New Product
    Click Button    ${AddNewProductPage.saveBtn}

Verified Add New Product Successfully
    Element Should Be Visible    ${AddNewProductPage.addNewProductSuccessNoti}