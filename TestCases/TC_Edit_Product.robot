*** Settings ***
Library     SeleniumLibrary
Resource    ../Keyword/LoginKeyword.robot
Resource    ../Keyword/EditProductKeyword.robot
Variables    ../Resource/resource.py
Suite Setup    Login Page    ${WebBrowser.Login_Url}   ${WebBrowser.Chrome_Browser}    admin@yourstore.com    admin
Test Setup     Go To    ${WebBrowser.Product_Url}
Suite Teardown   Close Browser


*** Test Cases ***
EDIT_TC_001: VERIFIED THE EDIT PRODUCT PAGE
    [Documentation]     As an admin, I can click on Edit button to edit Product details of any products
    [Tags]  TC_01
    Click Edit Product Button
    EditProductKeyword.Verified Setting Product Button
    EditProductKeyword.Verified Save Product Button
    EditProductKeyword.Verified Save and Contiunue Edit Product Button
    Verified Copy Product Button

EDIT_TC_02: EDIT PRODUCT AND VERIFIED UPDATED DETAILS (NAME, SKU, PRICE)
    [Documentation]     As an admin,on Edit Product Details, I can edit Product  Info of product
    [Tags]  TC_02
    Prepare Data For Edit Product   The Current Product     TEST_SKU    900     10  10  10  10      Track inventory
    Edit Name, SKU, Price For Current Product    The Editted Product     TEST_EDITTED_SKU    500
    Sleep    3s
    Verified Edit Name, SKU, Price Of Product Successfully      The Editted Product     TEST_EDITTED_SKU    500

#EDIT_TC_03: EDIT SHIPPING PRODUCT AND VERIFIED UPDATE DETAILS
#    [Documentation]     As an admin, on Edit Product Details page, I can edit Shipping of product
#    [Tags]  TC_03
#    Prepare Data For Edit Product   The Current Product     TEST_SKU    900     10  10  10  10      Track inventory
#    Edit Shipping Product   20  20  20  20
#    Verified Edit Shipping Product Successfully     The Current Product     20  20  20  20

EDIT_TC_04: EDIT INVENTORY PRODUCT AND VERIFIED UPDATE DETAILS
    [Documentation]     As an admin, on Edit Product Details page, I can edit Inventory of product
    [Tags]  TC_04
    Prepare Data For Edit Product   The Current Product     TEST_SKU    900     10  10  10  10      Track inventory
    Edit Inventory Product      Track inventory by product attributes
    Verified Edit Inventory Product Successfully    The Current Product    Track inventory by product attributes

EDIT_TC_05: EDIT MULTIMEDIA OF PRODUCT AND VERIFIED UPDATE
    [Documentation]     As an admin, on Edit Product Details page, I can edit Multimedia of product
    [Tags]  TC_05
    Prepare Data For Edit Product   The Current Product     TEST_SKU    900     10  10  10  10      Track inventory
    Edit Multimedia For Product
    Verified Edit Multimedia Successfully
