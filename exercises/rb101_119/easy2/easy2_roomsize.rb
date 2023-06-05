=begin
---------------- Problem
General revision of problem: Ask a user for the length and width in meters, then display area of room
in square feet and square meters

1 square meter == 10.7639 square feet

Input: 2 integers - length and width (meters)

Output: square meters (length x width), square feet (converted, length x width)

Rules:
- 1 square meter == 10.7639 square feet
- print out question and ask for input
- print out sentence with square meters and then square feet in brackets


---------------- Modelling
What type of objects do you need? Array, hash, etc.

---------------- Data Structures / Algorithm
Write out pseudo-code

Print out a question to the user prompting to enter length of room in meters
Get user input as an integer and check to make sure its an integer
Save it to a variable length
print out question to user prompting to enter width of room in meters
Get user input as an integer, and check to make sure its an integer
Save it to a variable width
Calculate square meters length x width and assign it to another variable
calculate square feet, and save it to a another variable
print setence explaining area in sqm and sqf

---------------- Scratchpad
GREAT IDEA!
- methods that might be useful....

=end

SQFEET_TO_SQINCHES = 144
SQFEET_TO_SQCM = 929.03

puts "Enter the length of the room in feet:"
length = gets.chomp.to_i
puts "Enter the width of the room in feet:"
width = gets.chomp.to_i

square_feet = (length * width).round(2)
square_inches = (square_feet * SQFEET_TO_SQINCHES).round(2)
square_cm = (square_feet * SQFEET_TO_SQCM).round(2)

puts "the area of the room is #{square_feet} square feet," + \
"#{square_inches} square inches, #{square_cm} square centimeters"

