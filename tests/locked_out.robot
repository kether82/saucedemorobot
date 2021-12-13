*** Settings ***
Documentation  A test suite with a single test for locked out user
...
...            This test follows the example using keywords 
...            from the selenium library

Resource        resources.robot
*** Test Cases ***
Locked out
    Open Browser To Login Page 
    # input username
    Input Text    user-name    ${LOCKED OUT USER}
    # input password
    Input Password    password    ${VALID PASSWORD}
    # click login button
    Click Button    login-button
    # should have error
    Element Text Should Be    css=*[data-test="error"]   Epic sadface: Sorry, this user has been locked out.
    # close browser
    [Teardown]    Close Browser