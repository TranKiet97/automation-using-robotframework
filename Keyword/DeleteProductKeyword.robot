*** Settings ***
Library     SeleniumLibrary
Library    XML
Resource    ../Keyword/AddNewProductKeyword.robot
Variables    ../Locator/ProductPageLocator.py
Variables   ../Locator/AddNewProductPageLocator.py


*** Keywords ***
Prepare Data For Delete Product
    Click Add New Product
    Input Product Name      The Only Product
    Click Save New Product
    Verified Add New Product Successfully

Prepare Data For Delete All Product
    Click Add New Product
    Input Product Name      The Multiple Products
    Click Save New Product
    Verified Add New Product Successfully
    Sleep    2s
    Click Add New Product
    Input Product Name      The Multiple Products
    Click Save New Product
    Verified Add New Product Successfully

Select Current Product
    Select Checkbox    ${ProductPage.selectCurrentProductCheckbox}

Select All Product
    Select Checkbox    ${ProductPage.selectAllProductCheckbox}

Click Delete Selected Product Button
    Click Button    ${ProductPage.deleteBtn}

Click Confirm Delete Button
    Wait Until Element Is Visible    ${ProductPage.confirmDeleteDialog}
    Click Button    ${ProductPage.confirmDeleteBtn}
    Sleep    3s

Verify Warning Message When Delete Product Without Selecting
    Element Should Be Visible    ${ProductPage.warningMess}