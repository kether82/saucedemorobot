*** Settings ***
Documentation  A test suite with a single test for sorting a to z
...
...            This test follows the example using keywords 
...            from the selenium library

Resource        resources.robot
*** Test Cases ***
AZSort
    Open Browser To Login Page 
    # input username
    Input Text    user-name    ${VALID USER}
    # input password
    Input Password    password    ${VALID PASSWORD}
    # click login button
    Click Button    login-button
    # change select
    Select From List By Index  css=*[data-test="product_sort_container"]    3
    # assert value
    List Selection Should Be  css=*[data-test="product_sort_container"]  hilo


    # close browser
    [Teardown]    Close Browser