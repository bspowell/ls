first_num = nil
second_num = nil
operator = nil

def valid_num?(num_string)
  num_string.to_i.to_s == num_string
end

def get_num
  loop do
    puts "Input a number"
    input1 = gets.chomp
    return input1.to_i if valid_num?(input1)
    
    puts "not a valid number"
  end
end 
def get_opp
  loop do
    puts "Input a type of operation (+,-,*,/)"
    input2 = gets.chomp
    return input2 if input2 == "+" || input2 == "-" ||input2 ==  "*" || input2 == "/"
    puts "not a valid operator"
  end
end   

def calculator(num1, opp, num2)
  case opp
    when "+"
      results = num1 + num2
    when "-"
      results = num1 - num2
    when "*"
     results = num1 * num2
    else
      results = num1.to_f / num2.to_f
  end
  puts "Here are your results: #{results}"
end 

loop do
  puts "Welcome to the Calculator"
  first_num = get_num
  second_num = get_num
  operator = get_opp
  
  calculator(first_num, operator, second_num)
end 

