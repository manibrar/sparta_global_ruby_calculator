
  def basic_add_function
    puts "What is the first number you would like to calculate?"
    response1 = gets.to_i
    puts  "What is the second number you would like to calculate?"
    response2 = gets.to_i
    basic_total = response1 + response2
    puts "Your answer is #{basic_total}"
  end

  def basic_subtract_function
    puts "What is the first number you would like to calculate?"
    response1 = gets.to_i
    puts  "What is the second number you would like to calculate?"
    response2 = gets.to_i
    answer = response1 - response2
    puts "Your answer is #{answer}"
  end

  def basic_multiply_function
    puts "What is the first number you would like to calculate?"
    response1 = gets.to_f
    puts  "What is the second number you would like to calculate?"
    response2 = gets.to_f
    answer = response1 * response2
    puts "Your answer is #{answer}"
  end

  def basic_divide_function
    puts "What is the first number you would like to calculate?"
    response1 = gets.to_f
    puts  "What is the second number you would like to calculate?"
    response2 = gets.to_f
    answer = response1 / response2
    puts "Your answer is #{answer.abs2}"
  end

  def advanced_power_function
    puts "What is the first number you would like to calculate?"
    response1 = gets.to_i
    puts  "What is the second number you would like to calculate?"
    response2 = gets.to_i
    answer = response1 ** response2
    puts "Your answer is #{answer}"
  end

  def advanced_sqrt_function
    puts "What is the number you would like the square root of?"
    response1 = gets.to_i
    answer = response1 ** 0.5
    puts "Your answer is #{answer}"
  end

  def basic_calculator
    puts "Hello would you like to [add], [subtract], [multiply] or [divide]?"
    calc_type = gets.chomp
    if calc_type == 'add'
      basic_add_function
    elsif calc_type == 'subtract'
      basic_subtract_function
    elsif calc_type == 'multiply'
      basic_multiply_function
    elsif calc_type == 'divide'
      basic_divide_function
    end
  end

  def advanced_calculator
    puts "Hello would you like to [power] or [sqrt]?"
    calc_type = gets.chomp

    if calc_type == 'power'
      advanced_power_function
    elsif calc_type == 'sqrt'
      advanced_sqrt_function
    end
  end

  def bmi_calc
    puts "Would you like [imperial] or [metric]?"
    bmi_choice = gets.chomp
    if bmi_choice == 'imperial'
      puts "Hello to calculate your bmi please tell me your height in feet and inches?"
      height = gets.to_f
      imperial_height = height * 0.3048
      puts "Hello to calculate your bmi please tell me your weight in lbs?"
      weight = gets.to_f
      imperial_weight = weight * 0.453592
      hi_weight = imperial_weight / imperial_height
      bmi = hi_weight/ imperial_height
    elsif bmi_choice == 'metric'
      puts "Hello to calculate your bmi please tell me your height in m?"
      height = gets.to_f
      puts "Hello to calculate your bmi please tell me your weight in kg?"
      weight = gets.to_f
      hi_weight = weight / height
      bmi = hi_weight/ height
    end
    if bmi < 18.6
      puts "your bmi is #{bmi} which is considered underweight"
    elsif bmi < 25 && bmi > 17
      puts "your bmi is #{bmi} which is considered a healthy weight"
    elsif bmi > 25
      puts "your bmi is #{bmi} which is considered overweight"
    end
  end

  def trip_calc
    puts "Hello to calculate your trip please tell me your distance in miles?"
    distance = gets.to_f
    puts "Hello to calculate your trip please tell me your vehicles mpg?"
    mpg = gets.to_f
    puts "Hello to calculate your trip please tell me your vehicles £ per gallon?"
    cpg = gets.to_f
    puts "Hello to calculate your trip please tell me your average speed?"
    speed = gets.to_f
    x_dist = distance/speed
    y_price = (distance/mpg)*cpg
    if (speed || cpg || distance || mpg) == " "
      puts "Error incorrect entry.. Please try again"
      greeting
    else
      for i in (60...speed)
        if mpg != 0
          mpg += -(2)
        end
      end
    puts "Your fuel consumption at #{speed.to_i} mph will be #{mpg.to_i} mpg"
    puts "Your trip will take #{x_dist.to_f} hours and will cost £#{y_price}"
  end
end

def greeting
  puts "Hello which calculator would you like to use? [basic] [advanced] [bmi] or [trip]?"
  calc_type = gets.chomp

  if calc_type == 'basic'
      basic_calculator
  elsif calc_type == 'advanced'
      advanced_calculator
  elsif calc_type == 'bmi'
      bmi_calc
  elsif calc_type == 'trip'
        trip_calc
  else
    puts  "Error please try again"
    greeting
  end
end

begin
greeting
puts "Would you like another calculation [y] or exit [x]"
user = gets.chomp
end until user == 'x'
