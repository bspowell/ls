
=begin

Problem:
- write a method that rotates the last n digits of a number


Input: integer, integer(number of last digits to rotate)
Output: integer (rotated)

eg. 735291, 2 == 735219

Rules:
- if given 1, don't rotate
- if given size of digits, rotate all 1
eg. 735291, 6 == 352917

Examples/Modeling:


Breakdown
- break first integer into an array
- select the last n digits
- rotate those digits by 1

Algorithm:
- given 2 integers
- split the first integer into an array of digits (keep same order)
- slice the last n digits from the array
- ierate from 0 to size of sliced array
  - rotate the selected digits each one by 1 with reassingment

=end

def rotate_rightmost_digits(integer, number)
  return integer if number <= 1
  integer = integer.digits.reverse
  (integer[0...-number] + rotate_array(integer[-number..-1])).join.to_i
end

def rotate_array(array)
  array[1..-1] + [array[0]]
end


p rotate_rightmost_digits(735291, 1) #== 735291
p rotate_rightmost_digits(735291, 2) #== 735219
p rotate_rightmost_digits(735291, 3) == 735912
p rotate_rightmost_digits(735291, 4) == 732915
p rotate_rightmost_digits(735291, 5) == 752913
p rotate_rightmost_digits(735291, 6) == 352917