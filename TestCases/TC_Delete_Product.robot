*** Settings ***
Library     SeleniumLibrary
Resource    ../Keyword/LoginKeyword.robot
Resource    ../Keyword/DeleteProductKeyword.robot
Resource    ../Keyword/SearchProductKeyword.robot
Variables    ../Resource/resource.py
Suite Setup    Login Page    ${WebBrowser.Login_Url}   ${WebBrowser.Chrome_Browser}    admin@yourstore.com    admin
Test Setup     Go To    ${WebBrowser.Product_Url}
Suite Teardown   Close Browser


*** Test Cases ***
DELETE_TC_001: DELETE THE SPECIFIC PRODUCT
    [Documentation]     As an admin, I can delete the specific product by clicking the checkbox before this Product
    [Tags]  TC_01
    Prepare Data For Delete Product
    Input Search Product Name    The Only Product
    Click Search Product Button
    Sleep    3s
    Select Current Product
    Click Delete Selected Product Button
    Click Confirm Delete Button
    Verified Not any Product be Displayed on Result Table       No data available in table

DELETE_TC_002: DELETE ALL PRODUCT
    [Documentation]     As an admin, I can delete all product by clicking the All checkbox
    [Tags]  TC_02
    Prepare Data For Delete All Product
    Input Search Product Name    The Multiple Products
    Click Search Product Button
    Sleep    3s
    Select All Product
    Click Delete Selected Product Button
    Click Confirm Delete Button
    Verified Not any Product be Displayed on Result Table       No data available in table

DELETE_TC_003: DO NOT DELETE PRODUCT WITHOUT SELECTING ANY PRODUCT
    [Documentation]     As an admin, I can't delete any Product if I have not chosen Product
    [Tags]  TC_03
    Click Delete Selected Product Button
    Click Confirm Delete Button
    Verify Warning Message When Delete Product Without Selecting