*** Settings ***
Library     SeleniumLibrary
Resource    ../Keyword/AddNewProductKeyword.robot
Resource    ../Keyword/SearchProductKeyword.robot
Variables   ../Locator/ProductPageLocator.py
Variables   ../Locator/EditProductPageLocator.py


*** Keywords ***
Click Edit Product Button
    Wait Until Element Is Visible    ${ProductPage.editProductBtn}
    Click Element    ${ProductPage.editProductBtn}

Click Save Editted Product
    Click Button    ${EditProductPage.saveBtn}

Verified Setting Product Button
    Element Should Be Visible    ${EditProductPage.settingBtn}

Verified Save Product Button
    Element Should Be Visible    ${EditProductPage.saveBtn}

Verified Save and Contiunue Edit Product Button
    Element Should Be Visible    ${EditProductPage.saveContEditBtn}

Verified Copy Product Button
    Element Should Be Visible    ${EditProductPage.copyProductBtn}

Prepare Data For Edit Product
    [Arguments]     ${product_name}     ${product_sku}      ${product_price}    ${product_weight}   ${product_length}   ${product_width}    ${product_height}   ${inventory_method}
    Click Add New Product
    Input Product Name      ${product_name}
    AddNewProductKeyword.Input Product SKU       ${product_sku}
    Input Product Price     ${product_price}
    Input Shipping Information      ${product_weight}   ${product_length}   ${product_width}    ${product_height}
    Select Inventory Method     ${inventory_method}
    Click Save New Product
    Input Search Product Name       ${product_name}
    Click Search Product Button

Edit Name, SKU, Price For Current Product
    [Arguments]     ${product_editted_name}     ${product_editted_sku}      ${product_editted_price}
    Click Edit Product Button
    Clear Element Text    ${EditProductPage.txtProductName}
    Input Product Name      ${product_editted_name}
    Clear Element Text    ${EditProductPage.SKU}
    AddNewProductKeyword.Input Product SKU       ${product_editted_sku}
    Input Product Price     ${product_editted_price}
    Sleep    2s
    Click Save Editted Product

Edit Shipping Product
    [Arguments]     ${product_weight}   ${product_length}   ${product_width}    ${product_height}
    Click Edit Product Button
    Input Shipping Information  ${product_weight}   ${product_length}   ${product_width}    ${product_height}
    Click Save Editted Product

Edit Inventory Product
    [Arguments]     ${inventory_method}
    Click Edit Product Button
    Select Inventory Method     ${inventory_method}
    Click Save Editted Product

Edit Multimedia For Product
    Click Edit Product Button
    Upload Avatar For Product

Verified Edit Name, SKU, Price Of Product Successfully
    [Arguments]     ${product_editted_name}     ${product_editted_sku}      ${product_editted_price}
    Input Search Product Name       ${product_editted_name}
    Click Search Product Button
    Sleep    3s
    Element Text Should Be    ${ProductPage.productNameCol}    ${product_editted_name}
    Element Text Should Be    ${ProductPage.productSKUCol}    ${product_editted_sku}
    Element Text Should Be    ${ProductPage.productPriceCol}   ${product_editted_price}
    Select Checkbox     ${ProductPage.selectCurrentProductCheckbox}
    Click Element    ${ProductPage.deleteBtn}
    Wait Until Element Is Visible    ${ProductPage.confirmDeleteDialog}
    Click Button    ${ProductPage.confirmDeleteBtn}

Verified Edit Shipping Product Successfully
    [Arguments]     ${product_name}     ${editted_product_weight}   ${editted_product_length}   ${editted_product_width}    ${editted_product_height}
    Input Search Product Name       ${product_name}
    Click Search Product Button
    Sleep    3s
    Click Edit Product Button
    Execute Javascript      window.scrollTo(0, 2600);
    Element Text Should Be    ${EditProductPage.shipWeight}    ${editted_product_weight}
    Element Text Should Be    ${EditProductPage.shipLength}    ${editted_product_length}
    Element Text Should Be    ${EditProductPage.shipWidth}    ${editted_product_width}
    Element Text Should Be    ${EditProductPage.shipHeight}    ${editted_product_height}
    Click Element    ${EditProductPage.deleteProductBtn}
    Wait Until Element Is Visible    ${EditProductPage.confirmDeleteDialog}
    Click Button    ${EditProductPage.confirmDeleteBtn}

Verified Edit Inventory Product Successfully
    [Arguments]     ${product_name}     ${inventory_method}
    Input Search Product Name       ${product_name}
    Click Search Product Button
    Sleep    3s
    Click Edit Product Button
    Element Text Should Be    ${AddNewProductPage.inventoryMethodSelected}    ${inventory_method}
    Click Element    ${EditProductPage.deleteProductBtn}
    Wait Until Element Is Visible    ${EditProductPage.confirmDeleteDialog}
    Click Button    ${EditProductPage.confirmDeleteBtn}

Verified Edit Multimedia Successfully
    Verified Upload Avatar Successfully
    Click Element    ${EditProductPage.deleteProductBtn}
    Wait Until Element Is Visible    ${EditProductPage.confirmDeleteDialog}
    Click Button    ${EditProductPage.confirmDeleteBtn}