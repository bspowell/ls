=begin

Problem:
- write a method that rotates the array by moving
the first element to the end of the array
- the original array should not be modified.

Input: array
Output: array rotated by 1

Rules:
- can be strings or numbers
- cannot modify original array

Examples/Modeling:

Algorithm:
- given an array
- iterate over the array
- move the first element to the back by reaassign the next element
in the index to it and vice versa
- ends at second last element in array

=end

def rotate_array(array)
  # array = array.dup
  # (0..array.size - 2).each do |ind|
  #   array[ind], array[ind+1] = array[ind+1], array[ind]
  # end
  array[1..-1] + array[0]
end


# rotate_array([7, 3, 5, 2, 9, 1]) #== [3, 5, 2, 9, 1, 7]
# rotate_array(['a', 'b', 'c']) == ['b', 'c', 'a']
# rotate_array(['a']) == ['a']
p rotate_array("string") #== 'trings'

# x = [1, 2, 3, 4]
# rotate_array(x) == [2, 3, 4, 1]   # => true
# p x == [1, 2, 3, 4]                 # => true