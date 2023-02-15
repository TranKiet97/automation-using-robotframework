*** Settings ***
Library     SeleniumLibrary
Resource    ../Resource/LoginKeyword.robot
Resource    ../Resource/SearchProductKeyword.robot
Suite Setup    Login Page    ${Login_Url}    ${Browser}    admin@yourstore.com    admin
Test Setup     Go To    ${Product_Url}
Suite Teardown   Close Browser

*** Variables ***
${Login_Url}     https://admin-demo.nopcommerce.com/login
${Product_Url}  https://admin-demo.nopcommerce.com/admin/Product
${Browser}      chrome

*** Test Cases ***
Search_TC_01_Collapse and Expand Search Form
    [Documentation]     As an admin, I can collapse/expand for Search form
    [Tags]  TC_01
    Check the Search Form be Visible
    Click on Collapse Button
    Check the Search Form be Unvisible
    Click on Collapse Button
Search_TC_02_Search Product by Product Name
    [Documentation]     As an admin, I can search for Product by Product Name
    [Tags]  TC_02
    Input Search Product Name    Build your own computer
    Click Search Product Button
    Sleep    3s
    Verified the Product be Displayed on Result Table    Build your own computer
Search_TC_03_Search Product Details by Using Product SKU
    [Documentation]     As an admin, I can search for Product by Go directly to product SKU
    [Tags]  TC_03
    Input Product SKU    COMP_CUST
    Click Go Button
    Verified the Edit Product Details Page be Displayed    COMP_CUST
Search_TC_04_Search Product With non-exist Product
    [Documentation]     As an admin, I can't see the search result when input incorrect Product Name
    [Tags]  TC_04
    Input Search Product Name    Non-exist Product
    Click Search Product Button
    Sleep    3s
    Verified Not any Product be Displayed on Result Table   No data available in table

