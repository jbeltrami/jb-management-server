# JB Management Server

## ERD
The ERD of this project can be found here: http://i.imgur.com/ye86YeY.jpg

## Project Links
[FRONTEND-DEPLOY]  https://jbeltrami.github.io/jb-management-client/

[FRONTEND-REPO]  https://github.com/jbeltrami/jb-management-client

[BACKEND-DEPLOY]  https://jb-management.herokuapp.com/

[BACKEND-REPO]  https://github.com/jbeltrami/jb-management-server

## ROUTES:

post '/sign-up' => 'users#signup'
post '/sign-in' => 'users#signin'
delete '/sign-out/:id' => 'users#signout'
patch '/change-password/:id' => 'users#changepw'
RESTful routes to clients
RESTful routes to services

## TECHNOLOGIES
Used Ruby on Rails (ROR) to scaffold and work on the MVC.

## APPROACH
For this app, used three tables (Users, Clients and Services), where:
- Services belong to both Users and Clients;
- Users have many Clients and many Services;
- Clients have many Services and belongs to Users.

## UNSOLVED PROBLEMS
- Users can write anything they want in the description, making it hard to keep
a pattern.
- Only service providers have access to a service record. In the future, clients
should also be able to see a history of services that they payed for.
- Can't make appointments (clients) or have a schedule (users). 
