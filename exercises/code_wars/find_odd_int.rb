=begin
Given an array of integers, find the one that appears an odd number of times.

There will always be only one integer that appears an odd number of times.

Examples
[7] should return 7, because it occurs 1 time (which is odd).
[0] should return 0, because it occurs 1 time (which is odd).
[1,1,2] should return 2, because it occurs 1 time (which is odd).
[0,1,0,1,0] should return 0, because it occurs 3 times (which is odd).
[1,2,2,3,3,3,4,3,3,3,2,2,1] should return 4, because it appears 1 time (which is odd).

Problem:
- find the one integer that appears an odd num of times
- there will always be only one integer

Input: array of ints
Output: int - that appears odd times

Rules:

Examples/Modeling:

Algorithm:
- give an array
- iterate over array and select and integer
  - that when we call count on , returns an odd number
- convert to an integer



=end

def find_it(array)
  array.select do |num|
    array.count(num).odd?
  end[0]
end




p find_it([7]) #== 7 # because it occurs 1 time (which is odd).
p find_it([0]) #== 0 # because it occurs 1 time (which is odd).
p find_it([1,1,2]) #== 2 # because it occurs 1 time (which is odd).
p find_it([0,1,0,1,0])  #== 0 # because it occurs 3 times (which is odd).
p find_it([1,2,2,3,3,3,4,3,3,3,2,2,1]) #== 4 #because it appears 1 time (which is odd)