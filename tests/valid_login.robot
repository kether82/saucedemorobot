*** Settings ***
Documentation  A test suite with a single test for valid login 
...
...            This test follows the example using keywords 
...            from the selenium library

Resource        resources.robot
*** Test Cases ***
# Valid Login
#     Open Browser To Login Page 
#     # input username
#     Input Text    user-name    ${VALID USER}
#     # input password
#     Input Password    password    ${VALID PASSWORD}
#     # click login button
#     Click Button    login-button
#     # should be open in products page
#     Element Text Should Be    class:title    PRODUCTS
#     # close browser
#     [Teardown]    Close Browser

# Locked out
#     Open Browser To Login Page 
#     # input username
#     Input Text    user-name    ${LOCKED OUT USER}
#     # input password
#     Input Password    password    ${VALID PASSWORD}
#     # click login button
#     Click Button    login-button
#     # should have error
#     Element Text Should Be    css=*[data-test="error"]   Epic sadface: Sorry, this user has been locked out.
#     # close browser
#     [Teardown]    Close Browser

# Wrong Password
#     Open Browser To Login Page 
#     # input username
#     Input Text    user-name    ${VALID USER}
#     # input password
#     Input Password    password    ASD
#     # click login button
#     Click Button    login-button
#     # should have error
#     Element Text Should Be  css=*[data-test="error"]  Epic sadface: Username and password do not match any user in this service
#     # close browser
#     [Teardown]    Close Browser

Problem User
    Open Browser To Login Page 
    # input username
    Input Text    user-name    problem_user
    # input password
    Input Password    password    wrong_password
    # click login button
    Click Button    login-button
    # should have wrong images
    Page Should Contain Image  src:Sauce Labs Backpack
    
    # close browser
    [Teardown]    Close Browser


