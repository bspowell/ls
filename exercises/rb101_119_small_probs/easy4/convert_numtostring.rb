=begin

take number
put the numbers into an array with each integer a separate element
collapse the array into a string with join

=end


def integer_to_string(number)
  new_string = number.digits.reverse.join
  p new_string
end


p integer_to_string(4321) == '4321'
p integer_to_string(0) == '0'
p integer_to_string(5000) == '5000'
