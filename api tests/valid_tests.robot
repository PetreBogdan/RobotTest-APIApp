*** Settings ***    
Library    requests_api_app.ApiAPP
Resource    resources.robot

*** Variables ***


*** Test Cases ***
Adding an user and deleting it   
    ${user_dict}=    Create a dictionary for user
    ${id}=    Add An User From Dict    ${user_dict}
    Verify If User Was Added    ${id}
    Delete User    ${id}
    Deleted User Should Not Exist    ${id}  
    
Adding a post for an user and deleting it after
    ${user_dict}=    Create a dictionary for user
    ${post_dict}=    Create a dictionary for post
    ${post_id}     ${user_id}=    Add A Post For An User    ${user_dict}    ${post_dict}
    Verify If Post Was Added    ${post_id}
    Delete Post    ${post_id}
    Deleted Post Should Not Exist    ${post_id}
    [Teardown]    Delete User    ${user_id}
    
Adding a comment for a post and deleting it after
    ${user_dict}=    Create a dictionary for user
    ${post_dict}=    Create a dictionary for post
    ${comment_dict}=    Create a dictionary for a comment
    ${comment_id}    ${post_id}     ${user_id}=    Add A Comment For A Post    ${user_dict}    ${post_dict}    ${comment_dict} 
    Verify If The Comment Was Added    ${comment_id}
    Delete Comment    ${comment_id}
    Deleted Comment Should Not Exist    ${comment_id}
    [Teardown]    Delete User    ${user_id}
    
Adding a todo for a user and deleting it after
    ${user_dict}=    Create a dictionary for user
    ${todo_dict}=    Create a dictionary for a todo
    ${todo_id}    ${user_id}=    Add A Todo For A User    ${user_dict}    ${todo_dict}
    Verify If Todo Was Added    ${todo_id}
    Delete Todo    ${todo_id}
    Deleted Todo Should Not Exist    ${todo_id}
    [Teardown]    Delete User    ${user_id}