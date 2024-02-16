*** Settings ***
Library    SeleniumLibrary
Variables    ../PageObjects/LoginPageLocators.py


*** Keywords ***
Open my Browser
    [Arguments]    ${SiteUrl}    ${Browser}
    open browser    ${SiteUrl}    ${Browser}
    maximize browser window

Close my Browser
    close all browsers