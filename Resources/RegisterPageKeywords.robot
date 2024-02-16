*** Settings ***
Library    SeleniumLibrary
Variables    ../PageObjects/RegisterPageLocators.py


*** Keywords ***
Click Register Link
    click link    ${linkText_Register}

Enter First Name
    [Arguments]    ${FirstNameValue}
    input text    ${text_FirstName}    ${FirstNameValue}

Enter Last Name
    [Arguments]    ${LastNameValue}
    input text    ${text_LastName}   ${LastNameValue}

Enter Phone Number
    [Arguments]    ${PhoneNumberValue}
    input text    ${text_Phone}    ${PhoneNumberValue}

Enter Email ID
    [Arguments]    ${EmailValue}
    input text    ${text_Email}   ${EmailValue}

Enter Address
    [Arguments]    ${AddressValue}
    input text    ${text_Address}    ${AddressValue}

Enter City
    [Arguments]    ${CityValue}
    input text    ${text_City}    ${CityValue}

Enter State
    [Arguments]    ${StateValue}
    input text    ${text_State}    ${StateValue}

Enter Postal Code
    [Arguments]    ${PostalCodeValue}
    input text    ${text_PostalCode}    ${PostalCodeValue}

Select Country
    [Arguments]    ${CountryValue}
    select from list by label    ${dropdown_Country}    ${CountryValue}

Enter User Name On Register Page
    [Arguments]    ${UserNameValue}
    input text    ${text_RegisterUserName}    ${UserNameValue}

Enter Password On Register Page
    [Arguments]    ${PasswordValue}
    input text    ${text_RegisterPassword}    ${PasswordValue}

Enter Confirm Password On Register Page
    [Arguments]    ${ConfirmPasswordValue}
    input text    ${text_RegisterConfirmPassword}    ${ConfirmPasswordValue}

Click Submit Button On Register Page
    click button    ${button_RegisterSubmit}
