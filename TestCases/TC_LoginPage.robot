*** Settings ***
Resource    ../Resources/LoginPageKeywords.robot
Variables    ../TestData/LoginPageTestData.py


*** Test Cases ***
LoginPageTest
    [Tags]    regression
    Open my Browser    ${data_url}    ${data_browser}
    set selenium speed    2
    Enter UserName    ${data_username}
    Enter Password    ${data_password}
    Click SignIn Button
    Verify Successful Login
    Close my Browser