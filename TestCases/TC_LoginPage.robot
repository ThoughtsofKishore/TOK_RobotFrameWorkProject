*** Settings ***
Resource    ../Resources/BaseKeywords.robot
Resource    ../Resources/LoginPageKeywords.robot
Variables    ../TestData/LoginPageTestData.py
Test Setup    Launch Mercury Login Page

*** Test Cases ***
LoginPage Title Test
    [Tags]    regression
    set selenium speed    1
    Verify LoginPage Title
    close browser

Login Test
    [Tags]    regression
    set selenium speed    1
    Enter UserName    ${data_username}
    Enter Password    ${data_password}
    Click SignIn Button
    Verify Successful Login
    close browser
