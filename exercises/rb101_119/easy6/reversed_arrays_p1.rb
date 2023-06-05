=begin

Write a method that takes an Array as an argument, 
and reverses its elements in place; 
that is, mutate the Array passed into this method. 
The return value should be the same Array object.

You can't use #reverse.
ex. 
[1,2,3,4] => [4, 3, 2, 1]
%w(a b e d c) => ["c", "d", "e", "b", "a"]
['abc'] => ["abc"]
[] => []


input: array
output: mutated array with same # of elements

D/A
Get given an array
- take first and swap with last element
- then take first+1 and swap with last-1
- repeat until array is finished - array size / 2


=end 

def result(array)
  int = -1
  (array.size / 2).times do |ind|
    array[ind], array[int] = array[int], array[ind]
    int -= 1
  end
  array
end


# list = [1,2,3,4]
# p result(list) == [4, 3, 2, 1] # true
# list.object_id == result.object_id # true

# list = %w(a b e d c)
# p result(list) == ["c", "d", "e", "b", "a"] # true

# list = ['abc']
# p result(list) == ["abc"] # true

# list = []
# p result(list) == [] # true