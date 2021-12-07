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
    
Create a dictionary for a comment
    ${comment_dict}=    Create dictionary
    ...    id=500
    ...    post_id=203
    ...    name=AppTest2
    ...    email=AppTest2@Test.com
    ...    body=Test
    [Return]    ${comment_dict}
    
Create a dictionary for a todo
    ${todo_dict}=    Create Dictionary
    ...    id=500
    ...    user_id=4
    ...    title=AppTodo
    ...    due_on=13-06-2021 5:43:02 PM
    ...    status=pending
    [Return]    ${todo_dict}    
    