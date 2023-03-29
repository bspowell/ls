=begin
P:
Given this data structure, return an array which
contains only the hashes were all the integers are even.

input: array
output: array (only even hashes)

A: 
/* given an array */ 
- iterate over it to get to hashes
- 

=end

arr = [{a: [1, 2, 3]}, {b: [2, 4, 6], c: [3, 6], d: [4]}, {e: [8], f: [6, 10]}]

arr.select do |hash|
  hash.all? do |_, value|
    value.all?(&:even?)
  end
end



  