# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...



#rails generate model User first_name:string last_name:string email:string pwd:string

#added validations for user_attributes
  validates :first_name, presence: true, length: { maximum: 50}
  validates :last_name, presence: true, length: { maximum: 50}
  validates :email, presence: true, uniqueness: true, format: { with: /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i }
  validates :password, presence: true, length: { minimum: 6 }

rails db:migrate
rails g controller user

for check urls- create


curl -X POST -H "Content-Type: application/json" -d '{
  "user": {
    "first_name": "navya",
    "last_name": "k",
    "email": "navya@example.com",
    "password": "password"
  }
}' http://localhost:3000/users

update--

curl -X PUT -H "Content-Type: application/json" -d '{
  "user": {
    "first_name": "navya",
    "last_name": "k",
    "email": "navya@example.com",
    "password": "password"
  }
}' http://localhost:3000/users/1

curl -X PUT -H "Content-Type: application/json" -d '{
  {"first_name":"navya","last_name":"Do55ecdd7","email":"johnDod9d9@4example.com","password":"password"}
}' http://localhost:3000/users
#for -third party API
created one local api: http://localhost:3000/api/v1/third_party 




# assignmentTask
