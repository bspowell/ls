=begin
Write a method that takes one argument, a positive integer, and returns the sum of its digits.

The tests above should print true.

/* give an integer */
- turn into a string
- separate into array
- turn back into integers
- summ all elements

=end

def sum(num)
  num.digits.sum
end


puts sum(23) == 5
puts sum(496) == 19
puts sum(123_456_789) == 45