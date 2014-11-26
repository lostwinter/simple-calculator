

# Caluculator Assignment

# Step 1: Get inputs (num1, num1, and operator)

puts "Welcome to the simple calculator!"
puts "Let's calculate two numbers"
puts "What's the first number?"
num1 = gets.chomp.to_i
puts "Cool. What's the second number?"
num2 = gets.chomp.to_i
puts "Nifty. Would you like to add, subtract, multiply, or divide?"
puts "1) Add\n 2) Subtract\n 3) Multiply\n 4) Divide"
operator = gets.chomp.to_i

# Step 2: Converts inputs

while operator == 0
  puts "Please give me an operation I can do!"
  puts "Would you like to add, subtract, multiply or divide?"
  puts "\t   1) Add\n 2) Subtract\n 3) Multiply\n 4) Divide"
  operator = gets.chomp.to_i
end

# Step 3: Compute
if operator == 1  
  puts "The answer is #{num1 + num2}."
elsif operator == 2  
  puts "The answer is #{num1 - num2}."
elsif operator == 3 
  puts "The answer is #{num1 * num2}."
elsif operator == 4  
  puts "The answer is #{num1.to_f / num2.to_f}."
end