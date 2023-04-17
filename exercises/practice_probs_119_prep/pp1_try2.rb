=begin 
# Given an array of numbers, for each number find out how many numbers
# in the array are smaller than it. When counting numbers, only count
# unique values. That is, if a given number occurs multiple times in
# the array, it should only be counted once.

Problem:
- given an array of numbers
- for each number, find out how many numbers are smaller
- When counting, only count unique values.
  - eg. If a given number occurs multiple times in the array, count only once

Input: array of ints
Output: array of same size, with counts

Rules:
- only count unique values

Examples/Modeling:
- when given an array [8,1,2,2,3], compare it against it's unique value
equivalent - [8,1,2,3] to get the result [3, 0, 1, 1, 2]

Algorithm:
- given an array
- initialize new array, assign it to the unique value ver of the given array 
- iterate over the original array with map 
  - for each element, count how many are less than it in the uniq array
- return mutated array 

=end

# Examples:

def smaller_numbers_than_current(array)
  uniq_arr = array.uniq
  array.map! do |ele|
    uniq_arr.count { |uniq_e| uniq_e < ele }
  end
end

p smaller_numbers_than_current([8,1,2,2,3]) #== [3, 0, 1, 1, 2]
p smaller_numbers_than_current([1,4,6,8,13,2,4,5,4]) == [0, 2, 4, 5, 6, 1, 2, 3, 2]
p smaller_numbers_than_current([7,7,7,7]) == [0,0,0,0]
p smaller_numbers_than_current([6,5,4,8]) == [2, 1, 0, 3]
p smaller_numbers_than_current([1]) == [0]

# The tests above should print "true".