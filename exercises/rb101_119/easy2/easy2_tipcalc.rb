=begin
---------------- Problem
General revision of problem: 
Ask the user for the bill amount and tip percentage.
calculate the tip and then display total tip and total bill

Input: 
integer for bill
integer for tip

Output: 
tip amount in integer
total amount in integer

Rules:

---------------- Modelling
What type of objects do you need? Array, hash, etc.

---------------- Data Structures / Algorithm
Write out pseudo-code

Ask user for total bill amount as an integer
Ask user for total tip as an integer
Convert tip into a percentage and multiply that by total bill amount to get total tip
Add total tip amount to bill amount to get total bill amount
print results to screen.


---------------- Scratchpad
GREAT IDEA!
- methods that might be useful....

=end


puts "What is the bill?"
bill = gets.chomp.to_f

puts "What is the tip percentage?"
tip = gets.chomp.to_f

total_tip = (tip / 100) * bill
total_bill = total_tip + bill

puts "The tip is #{format('%.2f', total_tip)}"
puts "The total is #{format('%.2f', total_bill)}"


