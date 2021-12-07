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
    Delete User Should Not Exist    ${id}
    
Adding a post for an user and deleting it after
    ${user_dict}=    Create a dictionary for user
    ${post_dict}=    Create a dictionary for post
    ${post_id}     ${user_id}=    Add A Post For An User    ${user_dict}    ${post_dict}
    Verify If Post Was Add    ${post_id}
    Delete User    ${user_id}
    Delete User Should Not Exist    ${user_id}