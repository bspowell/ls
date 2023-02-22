=begin
---------------- Problem
General revision of problem: ask the user to enter an integer greater than 0. Then
ask if they want the sum or product of all the numbers between 1 and the integer

Input: integer

Output: sum or product of numbers between 1 and integer

Rules:
- if enter an integer less than 1, restart
- on second question, if enter s, return sum from 1 to integer
- on second question, if enter p, return prodcut from 1 to integer

---------------- Modelling
What type of objects do you need? Array, hash, etc.

---------------- Data Structures / Algorithm
Write out pseudo-code

Prompt the user to enter and integer greater than 0. 
check to make sure it is greater than 0, if not, repeat

Prompt user to see if they want the sum of integers or product of integers (press s or p)
check to see if they entered the correct letter, if not, repeat

If user enters s, then create an array with range of 1 to integer. Then, use .sum method to add
all integers and assign it to a variable

print range and sum

If user enters p, then create a range of 1 to integer and pass block to multiply numbers in the 
range together.

print range and product 


---------------- Scratchpad
each method to iterate over range

1.upto(number) { |value| total *= value } - good


=end

def calculate(num, choice)
  case choice
  when 's'
    puts "The sum of the integers between 1 and #{num} is #{(1..num).to_a.sum}"
  when 'p'
    product = 1
    arr = (1..num).to_a
    arr.each { |i| product = i * product}
    puts "The product of the integers between 1 and #{num} is #{product}"
  end
end

input_num = 0
input_choice = ''
loop do
  puts "Please enter an integer greater than 0:"
  input_num = gets.chomp.to_i
  if input_num < 0
    puts "Needs to be greater than 0"
    next
  end
  
  puts "Enter 's' to compute sum, 'p' to compute the product"
  input_choice = gets.chomp
  break if input_choice == 's' || input_choice == 'p'
  puts "Needs to be s or p"
end

calculate(input_num, input_choice)