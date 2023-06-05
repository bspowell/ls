# Write a method that takes an array of integers and returns the
# two numbers that are closest together in value.
=begin

Problem:
- write a method that takes an array of integers
- returns two numbers that are closest in value
- eg. [5, 25, 15, 11, 20] == [15, 11]


Input: array of ints
Output: array with 2 elements

Rules:
- elements that are in the returned array are in the same order as they
were in the original array

Examples/Modeling:

Algorithm:
- given an array of ints
- initilize new_arr, and assign to empty array
- interate over the given array, with a range 
- place every combination of 2 elements in the new array 
  - the elemetns need to be in the same order 
- sort sub_arrays by the minimum value
  - minusing e1 by e1, and returning the absolute value
- return the first sub_array in new_arr

=end

# Examples:

def closest_numbers(array)
  new_arr = []
  (0...array.size).each do |first|
    ((first + 1)...array.size).each do |second|
      new_arr << [array[first], array[second]]
    end
  end
  # new_arr.sort_by do |sub_array|
  #   (sub_array[0] - sub_array[1]).abs
  # end[0]
  new_arr
end

p closest_numbers([5, 25, 15, 11, 20]) #== [15, 11]
# p closest_numbers([19, 25, 32, 4, 27, 16]) == [25, 27]
# p closest_numbers([12, 7, 17]) == [12, 7]

# The tests above should print "true".