*** Settings ***
Library     SeleniumLibrary
Variables    ../Locator/LoginPageLocator.py

*** Keywords ***
Open My Browser
    [Arguments]     ${url}  ${browser}
    Open Browser    ${url}  ${browser}
    Maximize Browser Window

Enter Email
    [Arguments]     ${email}
    Clear Element Text    ${LoginPage.txtEmail}
    Input Text    ${LoginPage.txtEmail}    ${email}

Enter Password
    [Arguments]     ${password}
    Clear Element Text    ${LoginPage.txtPassword}
    Input Text    ${LoginPage.txtPassword}    ${password}

Click Submit
    Click Button    ${LoginPage.submitBtn}

Verified Access To Page
    [Arguments]     ${header_value}
    Element Text Should Be    ${LoginPage.txtHeader}    ${header_value}

Login Page
    [Arguments]     ${url}  ${browser}  ${email}    ${password}
    Open My Browser    ${url}  ${browser}
    Enter Email     ${email}
    Enter Password    ${password}
    Click Submit
    Verified Access To Page    Dashboard