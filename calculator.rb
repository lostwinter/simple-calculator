###########################################

# Simple Caluculator Assignment

# Ensure valid inputs
def valid_int?(num)
  !/^\d+$/.match(num).nil?
end

def valid_operator?(num)
  !/^[1-4]$/.match(num).nil?
end

# Step 1: Get inputs 
def prompt
  puts "                                 "
  puts "Welcome to the Simple Calculator!"
  puts "================================="
  puts "Okay, let's calculate two numbers:"
end

def get_input(ord)
  puts "What's the #{ord} number?"
  num = gets.chomp
  while !valid_int?(num)
    puts"I need an integer. Try again."
    num = gets.chomp
  end
  num.to_i
end

def get_calculation_choice
  puts "Nifty. Would you like to add, subtract, multiply, or divide?"
  puts "1) Add\n 2) Subtract\n 3) Multiply\n 4) Divide"
  operator = gets.chomp
  while !valid_operator?(operator)
    puts "Please give me an operation I can do!"
    puts "Would you like to add, subtract, multiply or divide?"
    puts "\t   1) Add\n 2) Subtract\n 3) Multiply\n 4) Divide"
    operator = gets.chomp
  end
  operator.to_i
end

# Step 2: Compute
def compute
num1 = get_input("first")
num2 = get_input("second")
operator = get_calculation_choice
  if operator == 1  
    puts "The answer is #{num1 + num2}."
  elsif operator == 2  
    puts "The answer is #{num1 - num2}."
  elsif operator == 3 
    puts "The answer is #{num1 * num2}."
  elsif operator == 4
    if num2 == 0
      puts "Can't divide numbers by zero"
    else 
      puts "The answer is #{num1.to_f / num2.to_f}."
    end
  end
end
 
prompt
compute