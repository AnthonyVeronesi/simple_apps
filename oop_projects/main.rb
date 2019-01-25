require_relative 'crud' # user this sytax if module is in same directory

users = [
        { username: "anthony", password: "password1"},
        { username: "erin", password: "password2"},
        { username: "emmitt", password: "password3"},
        { username: "elia", password: "password4"},
        { username: "dave", password: "password5"}
]
hashed_users = Crud.create_secure_users(users)
puts hashed_users
