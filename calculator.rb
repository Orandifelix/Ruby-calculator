# request user to enter firt number

puts "Enter firt number"
num1 = gets.chomp
if num1.match?(/\A-?\d+(\.\d+)?\z/)
  num1 = num1.to_f
  else
  puts "Invalid input. Please enter a valid number."
  exit  #exits the program incase of wrong value intered
end


#request user to enter operator

puts "Enter operator"
operator  = gets.chomp

#request user to enter second number

puts "Enter second number"
num2 = gets.chomp
if num2.match?(/\A-?\d+(\.\d+)?\z/)
  num2 = num2.to_f
  else
  puts "Invalid input. Please enter a valid number."
  exit   #exits the program incase of wrong value intered
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
