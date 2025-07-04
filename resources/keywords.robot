*** Settings ***
Library    SeleniumLibrary
Resource          ../resources/variables.robot
*** Keywords ***
Custom Test Teardown
    Run Keyword If Test Failed    Capture Page Screenshot
    Close Browser
Open Browser To Homepage
    Open Browser    https://automationexercise.com    chrome
    Maximize Browser Window

Go To Login Page
    Click Link    /login

Enter invalid login information
    [Arguments]    ${email}    ${password}
    Input Text    xpath=//input[@placeholder="Email Address"]    ${email}
    Input Text    xpath=//input[@placeholder="Password"]    ${password}

Click Login
    Click Button    Login

Hover And Click Add To Cart
    Mouse Over    xpath=(//div[@class='product-overlay'])[1]
    Click Element    xpath=(//a[@class='btn btn-default add-to-cart'])[2]

Click on the shopping cart
    Click Element    xpath=//u[text()='View Cart']