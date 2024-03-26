*** Settings ***
Library    SeleniumLibrary
Variables    ../TestData/BaseTestData.py


*** Keywords ***
Launch Mercury Login Page
    open browser    ${data_url}    ${data_browser}
    maximize browser window
    Wait sleep

Wait sleep
    sleep    2

Close my Browser
    close all browsers