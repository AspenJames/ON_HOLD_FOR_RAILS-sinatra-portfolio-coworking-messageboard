# Impact Hub Message Board

## Models

* Users:
   - Name
   - Username
   - Email
   - Password
   - has_many :messages
   - has_many :boards

* Messages:
   - Content
   - user_id
   - board_id
   - belongs_to :user
   - belongs_to :board

* Boards:
   - Location/room
   - has_many :users
   - has_many :messages
   - belongs_to :owner, class_name: "User"

## Controllers

* ApplicationController
   - index: list boards
   - signup/login/logout

* UserController
   - index: list users
   - slugifiable
   - show: individual user's messages

* BoardController
   - index: list boards
   - show: individual board's messages

* MessageController
   - index: list messages
   - show: individual message
   - new/edit/delete

## Specifications

 - Users cannot view boards or messages unless logged in
 - Users can only view/post to boards they are authorized to view
 - Owners set authorization upon creating a board and can edit authorization settings in the edit view
 - Users can only edit or delete their own messages
 - Users cannot post a new message unless logged in
 - Flash messages used to deliver "error messages"
 - Users can log out gracefully
 - Routes, redirects, and renders follow RESTful convention

## Stretch Goals

 - Create a Request class that will function as a join model between a user and a board. Users can then request access to a board (all visible in a form) and owners can grant or deny access to said board. Owners can view open requests via a request show page. 
