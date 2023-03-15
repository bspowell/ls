=begin

Write a method that determines and returns the ASCII string value of a string 
that is passed in as an argument.

The ASCII string value is the sum of the ASCII values of every character in the string

(You may use String#ord to determine the ASCII value of a character.)

input: string
output: integer


Take string and call ord on each character to determine value
- interate through each char
sum all the values to local vairable 
return integer


=end

def ascii_value(string)
  value = 0
  string.each_char do |char|
    value += char.ord 
  end
  value
end

p ascii_value('Four score') == 984
p ascii_value('Launch School') == 1251
p ascii_value('a') == 97
p ascii_value('') == 0