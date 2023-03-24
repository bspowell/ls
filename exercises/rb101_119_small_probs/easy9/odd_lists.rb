=begin
write a method that returns an array,
contains every other leement of an array that is passed in.
The values returned, should be those that are in the 1st, 3rd, 5th
and so on elements. 

/* given an array */
- return an array 
- with every odd element returned
=end

# def oddities(array)
#   new_arr = []
#   array.each_with_index do |ele, ind|
#     new_arr << ele if ind.even? 
#   end
#   new_arr
# end

def oddities(array)
  array.select.with_index do |element, ind|
    ind.even?
  end
end

p oddities([2, 3, 4, 5, 6]) == [2, 4, 6]
p oddities([1, 2, 3, 4, 5, 6]) == [1, 3, 5]
p oddities(['abc', 'def']) == ['abc']
p oddities([123]) == [123]
p oddities([]) == []
p oddities([1, 2, 3, 4, 1]) == [1, 3, 1]


