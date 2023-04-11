# Write a method that takes one argument: an array of integers.
# The method should return the minimum sum of 5 consecutive
# numbers in the array. If the array contains fewer than 5
# elements, the method should return nil.

=begin

P:
- write a method
- takes an array of integers
- return the minimum sum of 5 consecutive numbers in the array
  - any consecutive 5 numbers, doesn't have to be in order
- if array contains fewer than 5, return nil

Input: array of integers
Output: minimum sum of 5 consecutive numbers

Rules:
- if fewer than 5 numbers, return nil
- 

Examples/Modeling:
[55, 2, 6, 5, 1, 2, 9, 3, 5, 100] returns 16 cause
2, 6, 5, 1, 2 = 16

If array size is less than 5, return nil
intialize empty array
We need to iterate through the array and the next 4 numbers starting
at index 0.
- Sum the numbers
- add that result to an empty array
- Go to next number in array and take the next 4 elements 
- if there are less than 4 elements, end iteration
find the min number in the new array and return it

Algo:
/* given an array */
intializie an empty array
return nil if array.size < 5
Iterate from 0 upto array.size - 1
- sum elements from 0, length 5
- push that result into empty array
- move to next index
- sum elements from 1, length 5, etc.
find the min number in new array and return it

=end

def minimum_sum(array)
  new_arr = []
  return nil if array.size < 5
  0.upto(array.size-1) do |ind|
    new_arr << array[ind, 5].sum if array[ind, 5].count == 5
  end
  new_arr.min
end 
# Examples:

p minimum_sum([1, 2, 3, 4]) == nil
p minimum_sum([1, 2, 3, 4, 5, 6]) == 15
p minimum_sum([55, 2, 6, 5, 1, 2, 9, 3, 5, 100]) == 16
p minimum_sum([-1, -5, -3, 0, -1, 2, -4]) == -10

# The tests above should print "true".