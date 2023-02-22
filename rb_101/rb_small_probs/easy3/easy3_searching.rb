=begin
---------------- Problem
General revision of problem:
Ask the user for 6 times for a number - getting 6 different inputs. 
print a message saying if the 6th number appears in the last 5 numbers

Input: integers (6 of them)

Output: integer and array of integers

Rules:

---------------- Modelling
What type of objects do you need? Array, hash, etc.

---------------- Data Structures / Algorithm
Write out pseudo-code

Ask user for a number 6 times using times method
Push those numbers into an array 
After the 6th number, check to see if the last number is already in the array
print results to screen

---------------- Scratchpad
- methods that might be useful....
.times - for asking 6 times 
<< - pushing to array

.last - see what last number is
.include? - see if array includes the last number
a[1]..a[5] - range


User submition
%i(+ - * / % **).each do |op|
  puts "==> #{first} #{op.to_s} #{second} = #{[first, second].inject(op)}"
end
=end

arr = []
puts "Enter the 1st number"
arr << gets.chomp.to_i
puts "Enter the 2nd number"
arr << gets.chomp.to_i
puts "Enter the 3rd number"
arr << gets.chomp.to_i
puts "Enter the 4th number"
arr << gets.chomp.to_i
puts "Enter the 5th number"
arr << gets.chomp.to_i
puts "Enter the 6th number"
last_num = gets.chomp.to_i

if arr.include?(last_num)
  puts "The number #{last_num} appears in #{arr}"
else
  puts "The number #{last_num} does not appear in #{arr}"
end
