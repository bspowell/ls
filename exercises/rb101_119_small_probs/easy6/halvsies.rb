=begin 
Write a method that takes an Array as an argument, 
and returns two Arrays (as a pair of nested Arrays) 
that contain the first half and second half of the original Array, respectively. 

If the original array contains an odd number of elements, 
the middle element should be placed in the first half Array.

input: array
output 2 arrays (pair of nested arrays)
- first half and second half of the original array

explicit rules:
- if original array contains an odd number of elements, middle ele
should be placed in first array

implicit rules:
- if given 1 element array, return first half with ele, second array empty
- if given 0 element array, return two empty arrays.

D/A
- create a new nested array
- first nested array equals the range of 0 to array given / 2 + 1. 
- the second nested array equals original array minus nested first array


=end

# original solution

# def halvsies(array)
#   new_arr = []
#   if array.size.odd? 
#     ((array.size / 2) + 1).times do |num|
#       new_arr << array[num]
#     end
#   else
#     (array.size / 2).times do |num|
#       new_arr << array[num]
#     end
#   end
#   p new_arr = [new_arr, array-new_arr]
# end

# with slice method

def halvsies(array)
  middle = (array.size / 2.0).ceil
  first_array = array.slice(0, middle)
  second_array = array.slice(middle, array.size - middle)
  [first_array, second_array]
end


p halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
p halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
p halvsies([5]) == [[5], []]
p halvsies([]) == [[], []]