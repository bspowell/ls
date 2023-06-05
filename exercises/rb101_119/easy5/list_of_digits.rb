=begin

Write a method that takes one argument, a positive integer
and returns a list of the digits in the number.

input: integer
output: array of integers

D/A
- take integer, turn into string
- string into array with each element
- iterate through each element and convert to int



=end

def digit_list(num)
  new_num = num.to_s.chars.map do |char|
    char.to_i
  end
end


puts digit_list(12345) == [1, 2, 3, 4, 5]     # => true
puts digit_list(7) == [7]                     # => true
puts digit_list(375290) == [3, 7, 5, 2, 9, 0] # => true
puts digit_list(444) == [4, 4, 4]             # => true