# request user to enter firt number

# puts "Enter firt number"
# num1 = gets.chomp
# if num1.match?(/\A-?\d+(\.\d+)?\z/)
#   num1 = num1.to_f
#   else
#   puts "Invalid input. Please enter a valid number."
#   exit  #exits the program incase of wrong value intered
# end

num1 = nil
num2 = nil
max_attempts = 3
attempts = 0

loop do
  puts "Enter first number"
  input = gets.chomp

  if input.match?(/\A-?\d+(\.\d+)?\z/)
    num1 = input.to_f
    break
  else
    attempts += 1
    puts "Invalid input. Please enter a valid number."
    if attempts >= max_attempts
      puts "Maximum number of attempts reached. Exiting."
      exit
    end
  end
end

#request user to enter operator

puts "Enter operator"
operator  = gets.chomp

#request user to enter second number

# puts "Enter second number"
# num2 = gets.chomp
# if num2.match?(/\A-?\d+(\.\d+)?\z/)
#   num2 = num2.to_f
#   else
#   puts "Invalid input. Please enter a valid number."
#   exit   #exits the program incase of wrong value intered
# end

loop do
  puts "Enter second number"
  input = gets.chomp

  if input.match?(/\A-?\d+(\.\d+)?\z/)
    num2 = input.to_f
    break
  else
    attempts += 1
    puts "Invalid input. Please enter a valid number."
    if attempts >= max_attempts
      puts "Maximum number of attempts reached. Exiting."
      exit
    end
  end
end


#choose operator

if operator == "+"
  puts num1 + num2
elsif operator == "-"
  puts num1 - num2
elsif operator == "/"
  puts num1 / num2
elsif operator == "*"
  puts num1 * num2
else
  puts "Invalid operator"
end
