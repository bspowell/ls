=begin

Input:
Integer - generate random number between 20 and 200

output:
print a string

d/a
- initialize a variable
- generate random number from that int range 20..200
- save it to the variable
- print string with integer as age

Part 2:
- ask for a name
- if no name, have a default to Teddy.

=end

puts "What's your name?"
name = gets.chomp()
if ["", nil, " "].include? name
  name = "Teddy"
end
age = rand(20..100)

puts "#{name} is #{age} years old"