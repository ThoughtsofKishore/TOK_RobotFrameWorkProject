*** Settings ***
Resource    ../Resources/BaseKeywords.robot
Resource    ../Resources/RegisterPageKeywords.robot
Variables    ../TestData/RegisterPageTestData.py
Test Setup    Launch Mercury Login Page

*** Test Cases ***
RegisterPage Test
    [Tags]    regression
    set selenium speed    1
    Click Register Link
    Enter First Name    ${data_firstname}
    Enter Last Name    ${data_lastName}
    Enter Phone Number    ${data_phone}
    Enter Email ID    ${data_email}
    Enter Address    ${data_address}
    Enter City    ${data_city}
    Enter State    ${data_state}
    Enter Postal Code    ${data_postalCode}
    Select Country    ${data_country}
    Enter User Name On Register Page    ${data_registerUserName}
    Enter Password On Register Page    ${data_registerPassword}
    Enter Confirm Password On Register Page    ${data_registerConfirmPassword}
    Close my Browser
