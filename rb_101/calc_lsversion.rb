require 'yaml'
MESSAGES = YAML.load_file('messages.yml')

def prompt(message)
  puts "=> #{message}"
end

def integer?(num)
  num.to_i.to_s == num
end

def float?(num)
  num.is_a? Float
end

def valid_num?(num)
  integer?(num) || float?(num)
end

def opp_to_mess(opp)
  case opp
  when '1'
    'Adding'
  when '2'
    'Subtracting'
  when '3'
    'Multiplying'
  when '4'
    'Dividing'
  end
end

prompt(MESSAGES['welcome'])

name = nil
loop do
  name = gets.chomp
  
  if name.empty?()
    prompt(MESSAGES['valid_name'])
  else
    break
  end
end

prompt("Hi #{name}")

loop do #main loop
  
  num1 = nil
  loop do
    prompt(MESSAGES['f_num'])
    num1 = gets.chomp
    
    if valid_num?(num1)
      break
    else
      prompt(MESSAGES['valid_num'])
    end
  end 
  
  num2 = nil
  loop do
    prompt(MESSAGES['s_num'])
    num2 = gets.chomp
    if valid_num?(num2)
      break
    else
      prompt(MESSAGES['valid_num'])
    end
  end
  
  opp_prompt = <<-MSG
  What operations would you like to perform? 
  1) add 
  2) subtract
  3) multiply 
  4) divide
  MSG
  
  prompt(opp_prompt)

  opp = nil
  loop do
    opp = gets.chomp
    
    if %w(1 2 3 4).include?(opp)
      break
    else
      prompt(MESSAGES['valid_opp'])
    end
  end
  
  prompt("#{opp_to_mess(opp)} the two numbers..")
  
  result = case opp
  when '1'
    num1 + num2
  when '2'
    num1 - num2
  when '3'
    num1 * num2
  when '4'
    num1.to_f / num2.to_f
  else
    prompt("Enter a number from 1 to 4")
  end
  
  prompt("The result is #{result}")
  
  prompt(MESSAGES['another'])
  answer = gets.chomp
  break unless answer.downcase.start_with?('y')

end

prompt("Goodbye!")