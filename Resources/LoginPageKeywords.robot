*** Settings ***
Library    SeleniumLibrary
Variables    ../PageObjects/LoginPageLocators.py


*** Keywords ***

Enter UserName
    [Arguments]    ${userName}
    input text    ${text_LoginUserName}    ${userName}

Enter Password
    [Arguments]    ${userPassword}
    input text    ${text_LoginPassword}    ${userPassword}

Click SignIn Button
    click element    ${btn_signIn}

Verify Successful Login
    title should be    ${tittle_homepage}

Verify LoginPage Title
    title should be    ${tittle_loginpage}

