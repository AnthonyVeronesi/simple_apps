require 'bcript'

def create_hash_password(password)
  BCrypt::Password.create(password)
end

new_password = create_hash_password('password1')
puts new_password =='password1'
