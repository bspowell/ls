=begin
---------------- Problem
General revision of problem:
Prompt the user for 2 positive integers. 
Print the results of the following operations of those two numbers:
addition, subtraction, product, quotient, remainder, power
dont' validate input

Input: two integeers (positive)

Output: both numbers with operation and result

Rules:
- both have to be positive

---------------- Modelling
What type of objects do you need? Array, hash, etc.

---------------- Data Structures / Algorithm
Write out pseudo-code

ask for first number
ask for second number
print first number + second number.
..


---------------- Scratchpad


=end

puts "Enter first number"
f_num = gets.chomp.to_f

puts "Enter second number"
s_num = gets.chomp.to_f

puts "#{f_num} + #{s_num} = #{f_num + s_num}"
puts "#{f_num} - #{s_num} = #{f_num - s_num}"
puts "#{f_num} * #{s_num} = #{f_num * s_num}"
puts "#{f_num} / #{s_num} = #{f_num / s_num}"
puts "#{f_num} % #{s_num} = #{f_num % s_num}"
puts "#{f_num} ** #{s_num} = #{f_num ** s_num}"
