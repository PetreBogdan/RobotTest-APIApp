import pprint
from requestapi import RequestsApi
from user import User
from post import Post
from todo import Todo
from comment import Comment
import requests
from cgi import log
from py import _log

class ApiAPP:
    
    def Add_an_user_from_dict(self, user_dict):
        
        user1 = User(user_dict)
        return user1.user['id']
        
    def Verify_if_user_was_added(self, id):
        User.display_user_by_id(id)
        
    def Delete_user(self, id):
        User.delete_user_by_id(id)
        
    def Deleted_user_should_not_exist(self, id):
        try:
            User.display_user_by_id(id)
        except:
            print('User not found')
            
    def Add_a_post_for_an_user(self,user_dict, post_dict):
        user1 = User(user_dict)
        user1.create_post(post_dict)
        return user1.post.post['id'], user1.user['id']
    
    def Verify_if_post_was_added(self, id):
        Post.display_post_by_id(id)
        
    def Delete_post(self, id):
        Post.delete_post_by_id(id)
        
    def Deleted_post_should_not_exist(self, id):
        try:
            Post.display_post_by_id(id)
        except:
            print("Post not found")
            
    def Add_a_comment_for_a_post(self,user_dict, post_dict, comment_dict):
        user1=User(user_dict)
        user1.create_post(post_dict)
        user1.post.create_comment(comment_dict)
        return user1.post.comment.comment['id'], user1.post.post['id'], user1.user['id']
    
    def Verify_if_the_comment_was_added(self, id):
        Comment.display_comment_by_id(id)

    def Delete_comment(self, id):
        Comment.delete_comment_by_id(id)

    def Deleted_comment_should_not_exist(self, id):
        try:
            Comment.display_comment_by_id(id)
        except:
            print("Comment not found")
            
    def Add_a_todo_for_a_user(self, user_dict, todo_dict):
        user1=User(user_dict)
        user1.create_todo(todo_dict)
        return user1.todo.todo['id'], user1.user['id']
    
    def Verify_if_todo_was_added(self, id):
        Todo.display_todo_by_id(id)
        
    def Delete_todo(self, id):
        Todo.delete_todo_by_id(id)
        
    def Deleted_todo_should_not_exist(self, id):
        try:
            Todo.display_todo_by_id(id)
        except:
            print("Todo not found")
            
    def Invalid_dict_returns_http_error(self, user_dict):
        try:
            user1=User(user_dict)
        except requests.exceptions.HTTPError as err:
            print("User cannot be added")
            
    def Create_dict_without_param(self, param):
        user_dict = {'id': '500', 'name': 'bodi',
                  'email': 'AppTest@test.com', 'gender': 'male',
                  'status': 'active'}
        
        user_dict.pop(param)
        return user_dict
            
    