import pprint
from requestapi import RequestsApi
from user import User
from post import Post
from todo import Todo
import requests

class ApiAPP:
    
    # user_dict = {'id': '500', 'name': 'bodi',
    #               'email': 'AppTest@test.com', 'gender': 'male',
    #               'status': 'active'}
    
    def Add_an_user_from_dict(self, user_dict):
        
        user1 = User(user_dict)
        return user1.user['id']
        
    def Verify_if_user_was_added(self, id):
        User.display_user_by_id(id)
        
    def Delete_user(self, id):
        User.delete_user_by_id(id)
        
    def Delete_user_should_not_exist(self, id):
        try:
            User.display_user_by_id(id)
        except:
            print('User not found')
            
    def Add_a_post_for_an_user(self,user_dict, post_dict):
        user1 = User(user_dict)
        user1.create_post(post_dict)
        return user1.post.post['id'], user1.user['id']
    
    def Verify_if_post_was_add(self, id):
        Post.display_post_by_id(id)
    

    # # Create user
    # user_dict = {'id': '500', 'name': 'bodi',
    #              'email': 'AppTest@test.com', 'gender': 'male',
    #              'status': 'active'}
    # user1 = User(user_dict)
    # user1.display_user()
    # user1.modify_email('AppTest2@test.com')
    # user1.display_user()
    #
    # todo_data = {"id": 4, "user_id": 4,
    #              "title": "AppTodo",
    #              "due_on": "13-06-2021 5:43:02 PM",
    #              "status": "pending"}
    #
    # user1.create_todo(todo_data)
    # user1.todo.display_todo()
    #
    # # comment_dict = {"id": 1, "post_id": 2, "name": "AppTest2",
    # #                 "email": "AppTest2@test.com",
    # #                 "body": "Test"}
    #
    # # post_dict = {"id": 1325, "user_id": 214, "title": "Test", "body": "TestTestTest"}
    #
    # user1.delete_user()
