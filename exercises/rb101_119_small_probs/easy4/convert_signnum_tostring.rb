
=begin

input: integer
output: string

rules
- if postive, return string with + 
- if negative, return string with -
- if 0, return 0

check to see if there is a + or - in the number
if so, add it to the string
modulus the number and add return value to string - should be last digit

divide number by 10

=end
require 'pry'

DIGITS = %w(0 1 2 3 4 5 6 7 8 9)

def signed_integer_to_string(num)
  return '0' if num == 0
  
  string_ind = ''
  if num > 0
    string_ind << '+'
  else 
    string_ind << '-'
    num *= -1
  end

  string = ''
  until num == 0
    new_digit = num % 10
    string.prepend(DIGITS[new_digit])
    num /= 10
  end
  
  string.prepend(string_ind)
end


 p signed_integer_to_string(4321) == '+4321'
p signed_integer_to_string(-123) == '-123'
p signed_integer_to_string(0) == '0'