*** Settings ***
Documentation    Creating dictionaries
*** Variables ***



*** Keywords ***
Create a dictionary for user
    ${user_dict}=    Create Dictionary
    ...    id=500
    ...    name=bodi
    ...    email=AppTest@test.com
    ...    gender=male
    ...    status=active
    [Return]    ${user_dict}

Create a dictionary for post
    ${post_dict}=    Create Dictionary
    ...    id=500
    ...    user_id=203
    ...    title=Test
    ...    body=TestTestTest
    [Return]    ${post_dict}