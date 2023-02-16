*** Settings ***
Library     SeleniumLibrary
Resource    ../Resource/LoginKeyword.robot
Resource    ../Resource/AddNewProductKeyword.robot
Suite Setup    Login Page    ${Login_Url}    ${Browser}    admin@yourstore.com    admin
Test Setup     Go To    ${Product_Url}
Suite Teardown   Close Browser

*** Variables ***
${Login_Url}     https://admin-demo.nopcommerce.com/login
${Product_Url}  https://admin-demo.nopcommerce.com/admin/Product/List
${Browser}      chrome

*** Test Cases ***
Add_TC_01_Go to Crate Product Page
    [Documentation]     As an admin, I can go to Create Product see this page
    [Tags]  TC_01
    Verified Access To Page    Products
    Click Add New Product
    Verified Setting Product Button
    Verified Save Product Button
    Verified Save and Contiunue Edit Product Button
    Verified Toggle Button

Add_TC_02_Change Toggle Mode
    [Documentation]     As an admin I can change togle mode from Basic to Advance and the other hand
    [Tags]  TC_02
    Click Add New Product
    Verified Gift Card, Rental Card, Down loadable Product Card Invisible
    Click Toggle Button
    Sleep    3s
    Verified Gift Card, Rental Card, Down loadable Product Card Visible
    Click Toggle Button

Add_TC_03_Add New Product
    [Documentation]     As an admin, I can add a new product and save it
    [Tags]  TC_03
    Click Add New Product
    Input Product Name      Test Product
    Input Short Description    This product is created to test
    Input Product Price    1000
    Select Tax Exempt
    Input Shipping Information    10    10    10    10
    Select Inventory Method    Track inventory by product attributes
    Click Save New Product
    Verified Add New Product Successfully