# Impact Hub Message Board

## Models

* Users:
   - Name
   - Username
   - Email
   - Password
   - has_many :messages
   - has_many :boards, through: :messages

* Messages:
 - Content
 - user_id
 - board_id
 - belongs_to :user
 - belongs_to :board

* Boards:
 - Location/room
 - has_many :messages
 - has_many :users, through: :messages

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
 - new/edit/delete

## Specifications

 - Users cannot view boards or messages unless logged in
 - Users can only edit or delete their own messages
 - Users cannot post a new message unless logged in
 - Flash messages used to deliver "error messages"
 - Users can log out gracefully
 - Routes, redirects, and renders follow RESTful convention
