=begin
Write a method that rotates an array by moving the first element 
to the end of the array. 
The original array should not be modified.

Do not use the method Array#rotate or Array#rotate! for your implementation.

Example:
x = [1, 2, 3, 4]
rotate_array(x) == [2, 3, 4, 1]   # => true
x == [1, 2, 3, 4]                 # => true

inputs: array
output: new array (elements rotated by 1)

implicit rules:
- if given 1 element array, return same array

D/A
- iterate over the array
- store the first element in a variable
- make index 0 = orig_array(index 1), repeat for size of array
- push

=end

# def rotate_array(array)
#   new_arr = []
#   (array.size-1).times do |ind|
#     new_arr.push(array[ind+1])
#   end
#   new_arr.push(array[0])
#   new_arr
# end

# def rotate_string(string)
#   string[1..-1] + string[0]
# end

def rotate_integer(int)
  arr = int.digits.reverse
  (arr[1..-1] + [arr[0]]).join.to_i
end
# p rotate_array([7, 3, 5, 2, 9, 1]) == [3, 5, 2, 9, 1, 7]
# p rotate_array(['a', 'b', 'c']) == ['b', 'c', 'a']
# p rotate_array(['a']) == ['a']


# p rotate_string('hello')

p rotate_integer(12345)
