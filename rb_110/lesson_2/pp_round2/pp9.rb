=begin
Given this data structure, return a new array of the same structure 
but with the sub arrays being ordered 
(alphabetically or numerically as appropriate) in descending order.

map to transform array
sort b<=>a on sub arrays

=end 
arr = [['b', 'c', 'a'], [2, 1, 3], ['blue', 'black', 'green']]

new_arr = arr.map do |sub_arry|
  sub_arry.sort { |a, b| b <=> a }
end

p new_arr