=begin

Write a method, takes two array arguments,
each array contains a list of numbers,
returns a new array,
containing the product of each pair of numbers from the arguments that have 
the same index.

You may assume the arguments contain the same number of elements.

input: two arrays
output: new array (product of index pairs)

explicit rules:
- multiply the elements at the same indexes together

implicit rules:
- return a new array the same size as one of input arrays

D/A
- iterate for the size of the array
- use the counter as the index
- multiply both elements at index and put into new array

=end

def multiply_list(arr1, arr2)
  new_arr = []
  arr1.size.times do |ind|
    new_arr << arr1[ind] * arr2[ind]
  end
  new_arr
end

p multiply_list([3, 5, 7], [9, 10, 11]) == [27, 50, 77]