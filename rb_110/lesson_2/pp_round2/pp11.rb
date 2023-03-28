=begin
Given the following data structure use a combination of methods, 
including either the select or reject method, 
to return a new array identical in structure to the original but 
containing only the integers that are multiples of 3.

D/S:
arr = [[2], [3, 5, 7, 12], [9], [11, 13, 15]]
Returned array = [[], [3, 12], [9], [15]]

input: array
output: new array (that are multiples of 3)

/*given an array */ 
- iterate over array and reutrn an array the same ssize
- select from the inner arrays, only numbers divisible by 3
- return those arrays

=end

arr = [[2], [3, 5, 7, 12], [9], [11, 13, 15]]

arr.map do |sub_array|
  sub_array.select do |element|
    element % 3 == 0
  end
end

