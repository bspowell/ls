=begin
Write a method that takes a String of digits, 
and returns the appropriate number as an integer. 
You may not use any of the methods mentioned above.

assume all characters will be numeric.

You may not use any of the standard conversion methods available in Ruby 
to convert a string to a number, such as String#to_i, Integer()

Your method should do this the old-fashioned way and 
calculate the result by analyzing the characters in the string.


input: string of integers
output: integer (of same integers) 

split string up into characters and reverse it
for the length of the string, iterate
select first element (which is the last) and multiply it by (10 x it's place)
Look up value of the character against a hash that contains integer value pair
push the number into 

=end

require 'pry'
INTEGERS = {
  "0" => 0,
  "1" => 1,
  "2" => 2,
  "3" => 3,
  "4" => 4,
  "5" => 5,
  "6" => 6,
  "7" => 7,
  "8" => 8,
  "9" => 9
}

def string_to_integer(string)
  new_string = string.split('').reverse
  new_num = 0
  string.length.times do |num|
    new_char = INTEGERS[new_string[num]] * (10**num)
    new_num += new_char
  end
  new_num
end

p string_to_integer('4321') == 4321
p string_to_integer('570') == 570
