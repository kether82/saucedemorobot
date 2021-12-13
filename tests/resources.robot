*** Settings ***
Documentation    A resource file with reusable keywords and variables
...
...              Creating system specific keywords from default keywords
...              from SeleniumLibrary
Library          SeleniumLibrary
*** Variables ***
${SERVER}             www.saucedemo.com
${BROWSER}            chrome
${DELAY}              0
${VALID USER}         standard_user
${LOCKED OUT USER}    locked_out_user
${VALID PASSWORD}     secret_sauce
${LOGIN URL}          https://${SERVER}/
${HOME URL}           https://${SERVER}/inventory.html


*** Keywords ***
Open Browser To Login Page 
    # open browser
    Open Browser    ${LOGIN URL}    ${BROWSER}
    # set window size
    Maximize Browser Window
    # check if in login page
    Page Should Contain Element    login-button
    
