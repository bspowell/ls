=begin

Given the following data structure, and without using the Array#to_h method, 
write some code that will return a hash 
where the key is the first item in each sub array and the value is the second item.

D/S
arr = [[:a, 1], ['b', 'two'], ['sea', {c: 3}], [{a: 1, b: 2, c: 3, d: 4}, 'D']]
# expected return value: {:a=>1, "b"=>"two", "sea"=>{:c=>3}, {:a=>1, :b=>2, :c=>3, :d=>4}=>"D"}

input: array
output: hash (key = first element in each sub array, value is second)

A:
/* given an array */
- iterate over array with each to access sub arrays
- assign  first element of each sub-array as key, then second as value. 

=end

arr = [[:a, 1], ['b', 'two'], ['sea', {c: 3}], [{a: 1, b: 2, c: 3, d: 4}, 'D']]

arr.each_with_object({}) do |sub_array, hash|
  hash[sub_array[0]] = sub_array[1]
end
