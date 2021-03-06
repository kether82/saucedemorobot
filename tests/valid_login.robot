*** Settings ***
Documentation  A test suite with a single test for valid login 
...
...            This test follows the example using keywords 
...            from the selenium library

Resource        resources.robot
*** Test Cases ***
Valid Login
    Open Browser To Login Page 
    # input username
    Input Text    user-name    ${VALID USER}
    # input password
    Input Password    password    ${VALID PASSWORD}
    # click login button
    Click Button    login-button
    # should be open in products page
    Element Text Should Be    class:title    PRODUCTS
    # close browser
    [Teardown]    Close Browser



