*** Settings ***
Library     SeleniumLibrary
Resource    ../Keyword/LoginKeyword.robot
Resource    ../Keyword/SearchProductKeyword.robot
Variables    ../Resource/resource.py
Suite Setup    Login Page    ${WebBrowser.Login_Url}   ${WebBrowser.Chrome_Browser}    admin@yourstore.com    admin
Test Setup     Go To    ${WebBrowser.Product_Url}
Suite Teardown   Close Browser

*** Test Cases ***
Search_TC_01: COLLAPSE AND EXPAND SEARCH FORM
    [Documentation]     As an admin, I can collapse/expand for Search form
    [Tags]  TC_01
    Check the Search Form be Visible
    Click on Collapse Button
    Check the Search Form be Unvisible
    Click on Collapse Button
Search_TC_02: SEARCH PRODUCT BY PRODUCT NAME
    [Documentation]     As an admin, I can search for Product by Product Name
    [Tags]  TC_02
    Input Search Product Name    Lenovo IdeaCentre 600 All-in-One PC
    Click Search Product Button
    Sleep    3s
    Verified the Product be Displayed on Result Table    Lenovo IdeaCentre 600 All-in-One PC
Search_TC_03: SEARCH PRODUCT DETAILS BY USING PRODUCT SKU
    [Documentation]     As an admin, I can search for Product by Go directly to product SKU
    [Tags]  TC_03
    Input Product SKU    LE_IC_600
    Click Go Button
    Verified the Edit Product Details Page be Displayed    LE_IC_600
Search_TC_04: SEARCH PRODUCT WITH NON-EXIST PRODUCT
    [Documentation]     As an admin, I can't see the search result when input incorrect Product Name
    [Tags]  TC_04
    Input Search Product Name    Non-exist Product
    Click Search Product Button
    Sleep    3s
    Verified Not any Product be Displayed on Result Table   No data available in table

