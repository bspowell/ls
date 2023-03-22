=begin
Write a method that takes an Array, 
and returns a new Array 
with the elements of the original list in reverse order. 
Do not modify the original list.

You may not use Array#reverse or Array#reverse!
nor may you use the method you wrote in the previous exercise.

=end

# SOLUTION 1

# def reverse(array)
#   new_arr = []
#   int = array.size - 1
#   array.size.times do 
#     new_arr << array[int]
#     int -= 1
#   end
#   new_arr
# end

#Further exploration - Inject and #each_with_object

# def reverse(array)
#   array.inject([]) do |new_arr, ele|
#     new_arr.prepend(ele)
#   end
# end

def reverse(array)
  array.each_with_object([]) do |ele, new_arr|
    new_arr.prepend(ele)
  end
end

p reverse([1,2,3,4]) == [4,3,2,1]          # => true
p reverse(%w(a b e d c)) == %w(c d e b a)  # => true
p reverse(['abc']) == ['abc']              # => true
p reverse([]) == []                        # => true

list = [1, 3, 2]                      # => [1, 3, 2]
p new_list = reverse(list)              # => [2, 3, 1]
p list.object_id != new_list.object_id  # => true
p list == [1, 3, 2]                     # => true
p new_list == [2, 3, 1]                 # => true
