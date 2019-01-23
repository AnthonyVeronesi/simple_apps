def multiply(first_number, second_number)
  first_number * second_number
end

def divide(first_number, second_number)
  second_number / first_number
end

def addition(first_number, second_number)
  first_number + second_number
end

def subtract(first_number, second_number)
  first_number - second_number
end




puts "What do you want to do?"
puts "1) multiply"
puts "2) divide"
puts "3) add"
puts "4) subtract"
prompt = gets.chomp
puts "Enter in your first number"
first_number = gets.chomp.to_f
puts "Enter in your second number"
second_number = gets.chomp.to_f
if prompt == '1'
  puts "You have chosen to multiply #{first_number} with #{second_number}"
  result = multiply(first_number, second_number)
elsif prompt == '2'
  puts "You have chosen to divide #{first_number} by #{second_number}"
  result = divide(first_number, second_number)
elsif prompt == '4'
  puts "You have chosen to subtract #{second_number} from #{first_number}"
  result = subtract(first_number, second_number)
elsif prompt == '3'
  puts "You have chosen to add #{first_number} and #{second_number}"
  result = addition(first_number, second_number)
else
  puts "You have made an invalid choice"
end
puts "the answer is #{result}"
