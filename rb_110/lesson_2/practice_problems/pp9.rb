arr = [['b', 'c', 'a'], [2, 1, 3], ['blue', 'black', 'green']]

# Given this data structure, return a new array of the same structure 
# but with the sub arrays being ordered (alphabetically or numerically as appropriate)
# in descending order.

=begin
thoughts 
- descending order - 10, 9, 8 or Z, Y, X 
- sort with  b <=> a
- interate thorugh array with map since it returns a new array with same structure

=end

arr.map do |array|
  array.sort do |a, b|
    b <=> a
  end
end 
