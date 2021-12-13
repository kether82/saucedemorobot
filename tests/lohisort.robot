*** Settings ***
Documentation  A test suite with a single test for sorting low to hi
...
...            This test follows the example using keywords 
...            from the selenium library

Resource        resources.robot
*** Test Cases ***
LohiSort
    Open Browser To Login Page 
    # input username
    Input Text    user-name    ${VALID USER}
    # input password
    Input Password    password    ${VALID PASSWORD}
    # click login button
    Click Button    login-button
    # change select
    Select From List By Value  css=*[data-test="product_sort_container"]    lohi
    # assert value
    List Selection Should Be  css=*[data-test="product_sort_container"]  lohi


    # close browser
    [Teardown]    Close Browser