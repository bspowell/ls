=begin

Problem:
- create a method that takes an integer
- finds all multiples of 3 or 5 below that integer
- returns the sum of all the multiples
- if negativee, return 0

Example:
10 - are multiples of 3 or 5, we get 3, 5, 6 and 9. 
The sum of these multiples is 23.


Input: integer
Output: integer (sum of multiples)

Rules:
- if negative, return 0
- do not include integer passed as argument within multiples, only numbers 
below that integer.
- If the number is a multiple of both 3 and 5, only count it once.

Examples/Modeling:
Count from 0 to integer
if integer % 3 or integer % 5 == 0, then add to array
sum array

Algorithm:
/* given an iteger */
create an empty array
iterate from a range of 0 to integer
for each number, check to see if modulo 5 or 3 == 0
- if yes, add to array
- if no, next number
Sum the integers in the array to return


=end

def solution(number)
  arr = []
  (0...number).each do |num|
    arr << num if num % 3 == 0 || num % 5 == 0 
  end
  arr.sum
end

p solution(10)
p solution(20)