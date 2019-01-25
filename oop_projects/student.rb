require 'bcrypt'
class Student
  attr_accessor :first_name, :last_name, :email, :username, :password

  def initialize(first_name, last_name, email, username, password)
    @first_name = first_name
    @last_name = last_name
    @email = email
    @username = username
    @password = password
  end
  def to_s
    "First name: #{@first_name}
     Last name: #{@last_name}
     Email address: #{@email}
     Username: #{@username}"
  end

  my_password = BCrypt::Password.create("my password")
    #=> "$2a$10$vI8aWBnW3fID.ZQ4/zo1G.q1lRps.9cGLcZEiGDMVr5yUP1KUOYTa"
  puts my_password.to_s
  puts my_password.version              #=> "2a"
  puts my_password.cost                 #=> 10
  puts my_password == "my password"     #=> true
  puts my_password == "not my password" #=> false

  my_password = BCrypt::Password.new("$2a$10$vI8aWBnW3fID.ZQ4/zo1G.q1lRps.9cGLcZEiGDMVr5yUP1KUOYTa")
  puts my_password == "my password"     #=> true
  puts my_password == "not my password" #=> false

  anthony = Student.new(
    'Anthony',
    'Veronesi',
    'anthony@ruby.com',
    'averonesi',
    my_password
  )
  erin = Student.new(
    'Erin',
    'Veronesi',
    'erin@ruby.com',
    'everonesi',
    my_password
  )
  # puts anthony.password
  # puts erin
end
