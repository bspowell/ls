=begin

P:
Given an array with integers
find the minimum number to be added
so that sum of all elements equals the closest prime number
* a prime number is where it's only divisible by itself or 1. 

Input: array of integers
Output: integer (min number to be added)

Rules:

Examples/Modeling:
minimumNumber ([3,1,2]) = sum is 6
Prime.each(100) do |n| p n = 1, 3, 5, etc

Algorithm:
/*given an array of ints */ 
- sum the array
- add 1 to the sum until it hits a prime number
- take prime and minus it from sum




=end
require 'prime'
require 'pry'

def minimumNumber(array)
  sum = array.sum
  count = sum
  loop do 
    count += 1
    break if count % count == 0 
  end
  count - sum
end


# p minimumNumber ([3,1,2]) #==> return (1)
p minimumNumber ([2,12,8,4,6]) #==> return (5)
# p minimumNumber ([50,39,49,6,17,28]) #==> return (2)
