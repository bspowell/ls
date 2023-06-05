=begin
A featured number (something unique to this exercise)
is an odd number that is a multiple of 7,
and whose digits occur exactly once each.
So, for example, 49 is a featured number, but 98 is not (it is not odd),
97 is not (it is not a multiple of 7), and 133 is not (the digit 3 appears twice).

Write a method that takes a single integer as an argument,
and returns the next featured number that is greater than the argument.
Return an error message if there is no next featured number.

Problem:
- the featured number is an odd number that is a multiple of 7 and whose
digits occur exactly once each. 
- take a single integer as an argument
- return the next featured number that is greater than argument
- retrun an error message if there is no next featured number


Input: integer
Output: integer (next featured num or error message)

Rules:
- featured number = divisible by 7 and odd
- 

Examples/Modeling:

Algorithm:
- given an int
- init counter to int
- counter + 1, until counter is divisible by 7, odd, and digits only apear 1 
- return counter 
- return "There is no possible number" if error occurs 

=end

def featured(int)
  counter = int
  loop do
    counter += 1
    break counter if counter % 7 == 0 && counter.odd? && counter.digits == counter.digits.uniq
    break "There is no possible number that fulfills those requirements" if counter >= 9_999_999_999
  end
end

p featured(12) == 21
p featured(20) == 21
p featured(21) == 35
p featured(997) == 1029
p featured(1029) == 1043
p featured(999_999) == 1_023_547
p featured(999_999_987) == 1_023_456_987

p featured(9_999_999_999) # -> There is no possible number that fulfills those requirements