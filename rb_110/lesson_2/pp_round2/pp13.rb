=begin

P: Given the following DS, return a new array
containing the same sub-arrays as the original, 
but ordered by logically by only the odd numbers
they contain..

DS:
arr = [[1, 6, 9], [6, 1, 7], [1, 8, 3], [1, 5, 9]]
returned sorted array: [[1, 8, 3], [1, 5, 9], [6, 1, 7], [1, 6, 9]]

input: array
output: sorted array

A:
iterate over array to get to sub arrays
select only elements that are odd and return arrays
=end

arr = [[1, 6, 9], [6, 1, 7], [1, 8, 3], [1, 5, 9]]

arr.sort_by do |sub_array|
  sub_array.select do |ele|
    ele.odd? 
  end
end
