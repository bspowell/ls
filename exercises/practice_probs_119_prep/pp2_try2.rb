# Write a method that takes one argument: an array of integers.
# The method should return the minimum sum of 5 consecutive
# numbers in the array. If the array contains fewer than 5
# elements, the method should return nil.
=begin

Problem:
- write a method that takes one argument: array of ints.
- returns the minimum sum of 5 consecutive numbers in the array
- if array is fewer than 5 elements, return nil


Input:array of ints
Output: integer (minimum sum of 5 consecutive)

Rules:
- if under 5 ele, return nil

Examples/Modeling:
[1, 2, 3, 4, 5, 6]
-> [1, 2, 3, 4, 5] = 15
-> [2, 3, 4, 5, 6] = 20

array(0,5)
array(1,5)
array.size - 5 = 1 - we can only get index 0 upto 1 inclusive

Algorithm:
- given an array
- create an empty array
- iterate over range from 0 to array.size-5 inclusive
  - take range from index of length 5 and push into empty array
- assign return value of map over the array of arrays to new var
  - sum each one to return
- find min value

=end

# Examples:

def minimum_sum(array)
  return nil if array.size < 5
  stor_arr = []
  0.upto(array.size-5) do |ind|
    stor_arr << array[ind, 5].sum
  end
  stor_arr.min
end

p minimum_sum([1, 2, 3, 4]) == nil
p minimum_sum([1, 2, 3, 4, 5, 6]) == 15
p minimum_sum([55, 2, 6, 5, 1, 2, 9, 3, 5, 100]) == 16
p minimum_sum([-1, -5, -3, 0, -1, 2, -4]) == -10

# The tests above should print "true".