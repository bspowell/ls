=begin
get loan amount
get annual pecentage rate
get loan duration in years

calculate monthly interest rate
  annual percentage rate / 12

calculate loan duration in months
  duration / 12

calculate monthly payment
  loan amount / 12
=end

def monthly_int(num)
  (num.to_i.to_f / 100) / 12
end

def monthly_dur(num)
  num.to_f * 12
end

def monthly_pay(loan_amount, rate, duration)
  m = loan_amount.to_f * (rate.to_f / (1 - (1 + rate.to_f)**(-duration.to_f)))
  m
end

def valid_num?(num)
  return false if num.to_f == 0.0 || num.to_i.negative?
  valid_int?(num) || valid_float?(num)
end

def valid_int?(num)
  num.to_i.to_s == num
end

def valid_float?(num)
  num.to_f.to_s == num
end

loop do
  puts "Welcome to the loan calculator"
  puts "Enter a loan amount (0 < )"
  
  loan_amount = nil
  loop do
    loan_amount = gets.chomp
    break if valid_num?(loan_amount)
    puts "Number must be greater than 0"
  end

  puts "Enter a annual percentage rate above 0 (eg. for 10%, type 10)"
  
  rate = nil
  loop do
    rate = gets.chomp
    break if valid_num?(rate)
    puts "Number must be greater than 0"
  end
  
  puts "Enter a duration (years)"  
  
  duration = nil
  loop do

    duration = gets.chomp
    break if valid_num?(duration)
    puts "Number must be greater than 0"
  end
  
  puts <<-MSG
  Your monhtly rate is #{monthly_int(rate)}%, 
  Your monthly duration is #{monthly_dur(duration)} months,
  Your monthly loan payment is #{monthly_pay(loan_amount, monthly_int(rate), monthly_dur(duration))},
  MSG
  
  puts "Would you like to do another calc? (Y to continue)"
  answer = gets.chomp.downcase
  break unless answer.start_with?('y')
end
