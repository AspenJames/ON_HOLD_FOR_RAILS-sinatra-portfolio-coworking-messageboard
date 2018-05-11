# Sinatra Portfolio Project

## Coworking Message Board

### Objectives

1. Build an MVC Sinatra Application.
2. Use ActiveRecord with Sinatra.
3. Use Multiple Models.
4. Use at least one has_many relationship on a User model and one belongs_to relationship on another model
5. Must have user accounts. The user that created a given piece of content should be the only person who can modify that content
6. Must have the ability to create, read, update and destroy any instance of the resource that belongs to a user.
7. Ensure that any instance of the resource that belongs to a user can be edited or deleted only by that user.
8. You should also have validations for user input to ensure that bad data isn't added to the database. The fields in your signup form should be required and the user attribute that is used to login a user should be a unique value in the DB before creating the user.

### The Structure

* This project will have three models initially with the following associations:
  - User: has many Messages and has many Boards.
  - Board: belongs to Owner (aliased User class) and has many Users (users authorized to view/post).
  - Message: belongs to User and belongs to Board.
* Each model will have its own controller, as well as a general Application controller.
* Content will be specific to and dependent on a User being appropriately logged in.

### Stretch Goals

* Pending completion of a working model, this project may be expanded to include further functionality:
  - Request class to handle the User-Board authorization process, as well as handle requests to access boards.
  - Drop down, checkbox, or radio button interface for selecting which Board(s) from a list of all created Boards to request access
  - A view for Owners to view any pending requests, and either approve or deny access.
  - Status indicators for Users (eg. In office/Work from home, Do not disturb/Open for conversation).
