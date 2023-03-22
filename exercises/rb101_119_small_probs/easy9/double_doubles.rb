=begin
Write a method that returns 2 times the number provided as an argument, 
unless the argument is a double number; double numbers should be returned as-is.

input: integer
output: integer

IR: 
- if three digits, not a double number

D/A
/* given an integer */
- take the integers size
- if divisible by 2, split into first half of integers and second half
- see if they are equal to eachother
- if yes, then it's a double, if not, then multiply whole number by 2

=end
require 'pry'

def twice(int)
  if int.digits.size % 2 == 0
    firsthalf = int.digits.reverse.first(int.digits.size/2)
    secondhalf = int.digits.reverse.last((int.digits.size/2))
    firsthalf == secondhalf ? int : int * 2
  else
    int * 2
  end
end
  
p twice(37) == 74
p twice(44) == 44
p twice(334433) == 668866
p twice(444) == 888
p twice(107) == 214
p twice(103103) == 103103
p twice(3333) == 3333
p twice(7676) == 7676
p twice(123_456_789_123_456_789) == 123_456_789_123_456_789
p twice(5) == 10