*** Settings ***
Library    SeleniumLibrary
Variables    ../PageObjects/LoginPageLocators.py


*** Keywords ***
Open my Browser
    [Arguments]    ${SiteUrl}    ${Browser}
    open browser    ${SiteUrl}    ${Browser}
    maximize browser window

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

Close my Browser
    close browser