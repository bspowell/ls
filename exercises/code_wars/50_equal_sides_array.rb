=begin

Problem:
given an array of integers
find an index N where the sum of the integers to the left of N
is equal to the sum of the integers to the right of N.
If there is no index that would make this happen, return -1.

Input: array of integers
Output: integer (index)
- the lower index

Rules:

Examples/Modeling:
[1,2,3,4,3,2,1] => 3 - because 123 = 6 and 321 = 6
[1,100,50,-51,1,1] => 1 - because 1 = 1 and 50-51+1+1 = 1

Algorithm:
/* given an array of ints */
- iterate over the array
- sum index 0 to current index-1, and current index+1 to last index
- if equal, return index
- else return - 1


=end
require 'pry'

def find_even_index(array)
  array.each_with_index do |num, index|
    return index if array[0...index].sum == array[index+1..-1].sum
  end
  -1
end

p find_even_index([1,2,3,4,3,2,1]) #=> 3
p find_even_index([1,100,50,-51,1,1]) #=> 1
p find_even_index([1,2,3,4,5,6]) #=> -1
p find_even_index([20,10,30,10,10,15,35])#=> 3
p find_even_index([20,10,-80,10,10,15,35]) #=> 0
p find_even_index([10,-80,10,10,15,35,20]) #=> 6
p find_even_index(Array(1..100)) #=> -1
p find_even_index([0,0,0,0,0]) #=> 0 Should pick the first index if more cases are valid
p find_even_index([-1,-2,-3,-4,-3,-2,-1]) #=> 3
p find_even_index(Array(-100..-1)) #=> -1