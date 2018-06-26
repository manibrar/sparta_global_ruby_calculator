
def greeting
  puts "Hello!  Please type your name: "
  name = gets
end

# This method ask the user what type of calculation they would like to perform
# It returns the operation or an error for erroneous entry
def request_calculation_type
  puts "Would you like to use the [basic], [advanced], [bmi] or [trip] calculator?"
  operation_selection = gets.chomp

  if operation_selection == "basic"
    basic_calculator
  elsif operation_selection == advanced
    "advanced"
  elsif operation_selection == bmi
    "bmi"
  elsif operation_selection == trip
    "trip"
  else
    "error"
  end

end


def basic_calculator
  puts "Would you like to [add]. [subtract], [divide] or [multiply]?"
# This method performs the requested calculation
# It returns the result of the calculation
  operation_selection = gets.chomp

def calculate_answer(operator, a, b)
  if operator == "add"
    answer = a + b
  elsif operator == "subtract"
   answer = a - b
  elsif operator == "multiply"
    answer = a * b
  elsif operator == "divide"
    answer = a / b
  end
end
end

name = greeting
run_calculator = 1

while run_calculator == 1

  current_calculation = request_calculation_type()

  if current_calculation == "error"

    puts "I do not understand this type of calculation... Can we try again?"

  else
    puts "What is the first number you would you like to #{current_calculation}: "
    first_number = gets.to_i
    puts "What is the second number you would like to #{current_calculation}: "
    second_number = gets.to_i

    answer = calculate_answer(current_calculation, first_number, second_number)

    puts "The answer is #{answer}"
    puts "Type 1 to run another calcution or 2 to end: "
    run_calculator = gets.to_i

  end
end
