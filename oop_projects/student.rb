require_relative 'crud'
class Student
  include Crud
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

  anthony = Student.new(
    'Anthony',
    'Veronesi',
    'anthony@ruby.com',
    'averonesi',
    'password1'
  )
  erin = Student.new(
    'Erin',
    'Veronesi',
    'erin@ruby.com',
    'everonesi',
    'password2'
  )

hashed_password = anthony.create_hash_digest(anthony.password)

puts hashed_password
end
