=begin

Write a method that can rotate the last n digits of a number. For example:
Note that rotating just 1 digit results in the original number being returned.

You may use the rotate_array method from the previous exercise if you want. 
You may assume that n is always a positive integer.

def rotate_array(array)
  array[1..-1] + [array[0]]
end

=end 


def rotate_array(array, count)
  (array[(1-count)..-1] + [array[0-count]]).join
end

def rotate_rightmost_digits(num, digits)
  return num if digits == 1
  arr = num.digits.reverse
  (arr[0..(-digits - 1)].join + rotate_array(arr, digits)).to_i
end


p rotate_rightmost_digits(735291, 1) == 735291
p rotate_rightmost_digits(735291, 2) == 735219
p rotate_rightmost_digits(735291, 3) == 735912
p rotate_rightmost_digits(735291, 4) == 732915
p rotate_rightmost_digits(735291, 5) == 752913
p rotate_rightmost_digits(735291, 6) == 352917


