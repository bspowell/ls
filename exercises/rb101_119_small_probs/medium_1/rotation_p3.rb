=begin
Write a method that takes an integer as argument, 
and returns the maximum rotation of that argument. 
You can (and probably should) use the rotate_rightmost_digits method 
from the previous exercise.

If you take a number like 735291, and rotate it to the left, you get 352917. 
If you now keep the first digit fixed in place, and rotate the remaining digits, 
you get 329175. Keep the first 2 digits fixed in place and rotate again to 321759.
Keep the first 3 digits fixed in place and rotate again to get 321597. 
Finally, keep the first 4 digits fixed in place and rotate the final 2 digits 
to get 321579. The resulting number is called the maximum rotation of the 
original number.

/*given an integer */
- rotate numbers left by 1 place
- keep first integer fixed, rotate rest of digits
- keep first 2 digits fixed, rotate rest of digits.
- repeat until last 2 digits. Digits = 2

=end

require 'pry'

def rotate_array(array)
  array[1..-1] + [array[0]]
end

def rotate_rightmost_digits(number, n)
  all_digits = number.to_s.chars
  all_digits[-n..-1] = rotate_array(all_digits[-n..-1])
  all_digits.join.to_i
end

def max_rotation(number)
  digits = number.digits.size
  until digits < 2
    number = rotate_rightmost_digits(number, digits)
    digits -= 1
  end
  number
end

p max_rotation(735291) == 321579
p max_rotation(3) == 3
p max_rotation(35) == 53
p max_rotation(105) == 15 # the leading zero gets dropped
p max_rotation(8_703_529_146) == 7_321_609_845