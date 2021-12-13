*** Settings ***
Documentation  A test suite with a single test for wrong login 
...
...            This test follows the example using keywords 
...            from the selenium library

Resource        resources.robot
*** Test Cases ***
Wrong Password
    Open Browser To Login Page 
    # input username
    Input Text    user-name    ${VALID USER}
    # input password
    Input Password    password    ASD
    # click login button
    Click Button    login-button
    # should have error
    Element Text Should Be  css=*[data-test="error"]  Epic sadface: Username and password do not match any user in this service
    # close browser
    [Teardown]    Close Browser
