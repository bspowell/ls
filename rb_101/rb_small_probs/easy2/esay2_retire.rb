=begin
---------------- Problem
General revision of problem:
Ask the user what is their age and when they would like to retire.
Then display years left till retirement

Input: integer for age
integer for retirement age

Output: 
integer - years left

Rules:
- when given age and retirement, outputs needs to be an integer


---------------- Modelling
What type of objects do you need? Array, hash, etc.

---------------- Data Structures / Algorithm
Write out pseudo-code

Ask user for their age and accept an integer. 
Ask user what age they want to retire, receive an integer
Print current year and year they will retire
print how many yaers they have left

---------------- Scratchpad
GREAT IDEA!
- methods that might be useful....

=end
require 'time'
TIME = Time.now

puts "What is your age?"
age = gets.chomp.to_i
puts "What age would you like to retire?"
retire_age = gets.chomp.to_i

retire_year = TIME.year.to_i + (retire_age - age)

puts "It's #{TIME.year}. You will retire in #{retire_year}. " + \
"You have only #{retire_age - age} years of work to go!"





