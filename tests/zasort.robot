*** Settings ***
Documentation  A test suite with a single test for sorting z to a
...
...            This test follows the example using keywords 
...            from the selenium library

Resource        resources.robot
*** Test Cases ***
ZASort
    Open Browser To Login Page 
    # input username
    Input Text    user-name    ${VALID USER}
    # input password
    Input Password    password    ${VALID PASSWORD}
    # click login button
    Click Button    login-button
    # change select
    Select From List By Index  css=*[data-test="product_sort_container"]    1
    # assert value
    List Selection Should Be  css=*[data-test="product_sort_container"]  za


    # close browser
    [Teardown]    Close Browser