arr = [[2], [3, 5, 7, 12], [9], [11, 13, 15]]

=begin
Questions:
Given the following data structure use a combination of methods, 
including either the select or reject method, 
to return a new array identical in structure to the original 
but containing only the integers that are multiples of 3.

notes:

return: 
new array, same structure (map method)
selected elements (select method)
- integers that are multiples of 3

use map on array first to return original structure
use select on elements to return new array with selections
=end

arr.map do |array|
  array.select do |element|
    element % 3 == 0
  end
end s

