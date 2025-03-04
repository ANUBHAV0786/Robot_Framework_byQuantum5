*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}          https://opensource-demo.orangehrmlive.com/web/index.php/auth/login
${BROWSER}      chrome
${EXPECTED_TITLE}   OrangeHRM

*** Keywords ***
Open OrangeHRM Login Page

    Open Browser    ${URL}    ${BROWSER}
    sleep   3
    Maximize Browser Window

Close Browser Session
    Close Browser

*** Test Cases ***
Verify OrangeHRM Login Page Title
    Open OrangeHRM Login Page
    sleep   3
    ${title}    Get Title
    Should Be Equal As Strings    ${title}    ${EXPECTED_TITLE}
    log to console    ${title}
    Close Browser Session
    log to console    