*** Settings ***
Library    requests_api_app.ApiAPP

Test Template    Send an invalid dictionary to the API
*** Variables ***
${name}    bodi
${email}    AppTest@test.com
${gender}    male
${status}    active
    
*** Test Cases ***
Invalid mail    ${name}    email    ${gender}    ${status}
Invalid gender    ${name}    ${email}    ifdvn    ${status}       
Invalid status    ${name}    ${email}    ${gender}    8328fhh    

*** Keywords ***
Send an invalid dictionary to the API
    [Arguments]    ${name}    ${email}    ${gender}    ${status}
    ${user_dict}=    Create Dictionary
    ...    id=500
    ...    name=${name}
    ...    email=${email}
    ...    gender=${gender}
    ...    status=${status}
    Invalid Dict Returns Http Error    ${user_dict}
    

    
