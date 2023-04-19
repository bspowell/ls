=begin

Problem:

Write a method that computes the difference between
the square of the sum of the first n positive integers
and the sum of the squares of the first n positive integers.

- compute the difference between:
- summing the integers leading up to n including n - squared
- squaring each integer leading up to n including n - all summed

Input: integer
Output: integer ()

Rules:
- if 1, equal 0

Examples/Modeling:

Algorithm:
- given an integer
- iterate over a range from 1 to n inclusive
  - add each into an array
- init a var first_sum which equals, sum of the array and then square the result
- init a var second_sum to the return value of inject
  - use inject over the array with a blcok
    - for each element, square it
    - then add to accumulator value
- return first_sum - second_sum

=end

def sum_square_difference(int)
  arr = (1..int).to_a
  
  first_sum = arr.sum ** 2
  second_sum = arr.inject do |sum, number|
    sum + number**2
  end
  
  first_sum - second_sum
end


p sum_square_difference(3) == 22
#   # -> (1 + 2 + 3)**2 - (1**2 + 2**2 + 3**2)
p sum_square_difference(10) == 2640
p sum_square_difference(1) == 0
p sum_square_difference(100) == 25164150