*** Settings ***
Library    requests_api_app.ApiAPP
Test Template    Send a dictionary with missing keys


*** Test Cases ***
No name      name
No email     email
No gender    gender
No status    status

*** Keywords ***
Send a dictionary with missing keys
    [Arguments]    ${param}
    ${user_dict}=    Create Dict Without Param    ${param}
    Invalid Dict Returns Http Error    ${user_dict}
    