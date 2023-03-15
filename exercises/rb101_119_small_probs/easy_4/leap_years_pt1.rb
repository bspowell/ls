=begin

Q: Write a method that takes any year greater than 0 as an input and returns
true if the year is a leap year and false if not.

- leap years occur every year that is evenly divisible by 4 unless the year
is also divisable by 100
- if divisible by 100, then it's not a leap year, UNLESS divisible by 400
- assume: this rule is good for any year greater than 0

input: integer
output: boolean

take a number
see if number is evenly divisible by 400
- if it is, then return true since its a leap year
see if number is evenly divisible by 100
- if it is, return false since its not a leap year
see if number is evenly divisible by 4
- if it is, return true since its a leap year


=end
require 'pry'

#part 1
# def leap_year?(year)
#   if year % 400 == 0
#     return true
#   elsif year % 100 == 0
#     return false
#   elsif year % 4 == 0 
#     return true
#   else
#     false
#   end
# end

#bonus
def leap_year?(year)
  if year % 4 == 0 && year % 100 != 0
    return true
  elsif year % 100 == 0 && year % 400 != 0
    return false
  elsif year % 400 == 0 
    return true
  else
    false
  end
end


p leap_year?(2016) == true
p leap_year?(2015) == false
p leap_year?(2100) == false
p leap_year?(2400) == true
p leap_year?(240000) == true
p leap_year?(240001) == false
p leap_year?(2000) == true
p leap_year?(1900) == false
p leap_year?(1752) == true
p leap_year?(1700) == false
p leap_year?(1) == false
p leap_year?(100) == false
p leap_year?(400) == true