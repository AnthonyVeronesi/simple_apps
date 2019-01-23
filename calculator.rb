def math(prompt, first_number, second_number)
  if prompt == 1
    first_number + second_number
  elsif prompt == 2
    first_number - second_number
  elsif prompt == 3
    first_number * second_number
  else
    first_number / second_number
  end
end

puts "What do you want to do?"
puts "1) Add"
puts "2) Subtract"
puts "3) Multiply"
puts "4) Divide"
prompt = gets.chomp.to_f
if prompt == 1
  puts "You have chosen to add"
elsif prompt == 2
  puts "You have chosen to subtract"
elsif prompt == 3
  puts "You have chosen to Multiply"
elsif prompt == 4
  puts "You have chosen to divide"
else
  puts "You have made an invalid choice"
end
if prompt == 1 || prompt == 2 || prompt == 3 || prompt == 4
  puts "Enter in your first number"
  first_number = gets.chomp.to_f
  puts "Enter in your second number"
  second_number = gets.chomp.to_f
  puts "the answer is #{math(prompt, first_number, second_number).to_f}"
end
