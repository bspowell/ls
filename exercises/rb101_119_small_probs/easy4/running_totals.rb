=begin

input: array
output: array with same num of elements, but each element is the total
of the elements preceding. 

iterate over array and return a transformed array (map)
reassign element to the addition of last element with current element 

=end
require 'pry'
# def running_total(array)
#   new_arr = []
#   array.each_index do |index|
#     new_arr << array[0..index].sum
#   end
#   new_arr
# end

#map
# def running_total(array)
#   sum = 0
#   array.map { |value| sum += value }
# end

#each_with_object
# def running_total(array)
#   sum = 0
#   array.each_with_object([]) do |element, new_array|
#     new_array << (sum += element)
#   end
# end

#inject
def running_total(array)
  sum = 0
  array.inject([]) do |new_arr, ele|
    new_arr << (sum += ele)
  end
end

p running_total([2, 5, 13]) == [2, 7, 20]
p running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
p running_total([3]) == [3]
p running_total([]) == []