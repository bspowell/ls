=begin
---------------- Problem
General revision of problem:
Define a method that takes a number as an arugment. argument is a positive number, return negative version of that number.
If number is 0 or negative, return original

Input: positive integer
Output: negative integer or original

Rules:
- is positive int, return negative int
- if 0 or negative, return original number

---------------- Modelling
What type of objects do you need? Array, hash, etc.

---------------- Data Structures / Algorithm
Write out pseudo-code

Take a positive int as an argument.
Check if less than or equal to 0
return postive int minus postive int * 2 


---------------- Scratchpad
# alternate way

number > 0 ? -number : number

=end

def negative(num)
  return num if num <= 0
  num - (num*2)
end

p negative(5) == -5
p negative(-3) == -3
p negative(0) == 0      # There's no such thing as -0 in ruby