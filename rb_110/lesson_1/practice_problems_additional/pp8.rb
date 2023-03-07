# What happens when we modify an array while we are iterating over it? What would be output by this code?


numbers = [1, 2, 3, 4]
numbers.each do |number|
  p number
  numbers.shift(1)
end

=begin
We would iterate over the numbers array and output the element
then we call shift on numbers with 1 as an argument, it destructively 
removes the first element in the array. 

Since #each iterates over indexs, when we remove the first element
it still moves to the next index. So we end up skipping an element 
each time it iterates.

output:
1
3
=end
