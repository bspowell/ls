=begin 
You are going to be given an array of integers. Your job is to take that array 
and find an index N where the sum of the integers to the left of N is equal 
to the sum of the integers to the right of N. If there is no index that would
 make this happen, return -1.

For Example:
Let's say you have the array [1,2,3,4,3,2,1]
Your method will return the index 3, because at the 3rd position of the array,
the sum of the left side of the index [1,2,3] and the sum of the right side
of the index [3,2,1] both equal 6.

Another one:
You are given: [20,10,-80,10,10,15,35]
At index 0, the left side is []
The right side is [10,-80,10,10,15,35]
They both are equal to 0 when added. (Empty arrays are equal to 0 in this problem)
Index 0 would be the answer.


Problem:
- given an array of ints
- find the index where the sum of ints on the left of N is equal to the right
of N.
- if there is no index that this happens, return -1
- empty arrays equal to 0 


Input: array of ints
Output: integer (index)

Rules:
- empty arrays equal 0
- at index 0, the left side is an empty array, which sums to 0
- same is said for the last index

Examples/Modeling:
[1,2,3,4,3,2,1]
index is at 0
if index 0, sum 
left = array -1..0 = [], sum = 0, right = array [index+1 ...-1] sum from index + 1 to last index

index is at 1
left = sum from index 0 to index -1, right = sum index + 1 to last index


Algorithm:
- given array
- iterate over the array with a range
- if index is equal to 0, 
  - slice from 1 to the end of the array, sum it
  - if it is equal to 0, return 0.
- if the index is equal to the last index
  - slice from 0 to -2, sum it
  - if it is equla to 0, return last index.
- for all other indexes
  - left sum equals slice 0 to index -1, summed 
  - right sum equal sslice index + 1 to last index, summed
  - if they are equal, return index
- return -1

=end

def find_even_index(array)
  (0...array.size).each do |index|
    if index == 0
      return index if array[1..-1].sum == 0
    elsif index == (array.size - 1)
      return index if array[0..-2].sum == 0
    end
    left_sum = array[0...index].sum
    right_sum = array[(index + 1)..-1].sum
    return index if left_sum == right_sum
  end
  return -1
end
p find_even_index([1,2,3,4,3,2,1]) == 3
p find_even_index([1,100,50,-51,1,1]) == 1
p find_even_index([1,2,3,4,5,6]) == -1
p find_even_index([20,10,30,10,10,15,35]) == 3
p find_even_index([20,10,-80,10,10,15,35]) == 0
p find_even_index([10,-80,10,10,15,35,20]) == 6
p find_even_index([-1,-2,-3,-4,-3,-2,-1]) == 3
