*** Settings ***
Documentation  A test suite with a single test for problem user
...
...            This test follows the example using keywords 
...            from the selenium library

Resource        resources.robot
*** Test Cases ***
Problem User
    Open Browser To Login Page 
    # input username
    Input Text    user-name    ${PROBLEM USER}
    # input password
    Input Password    password    ${VALID PASSWORD}
    # click login button
    Click Button    login-button
    # should have wrong images
    Page Should Contain Image  /static/media/sl-404.168b1cce.jpg
    # close browser
    [Teardown]    Close Browser