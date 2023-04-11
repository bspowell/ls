# Write a method that takes an array of integers and returns the
# two numbers that are closest together in value.
=begin

Problem:
- write a method that takes and array of integers
- returns two numbers that are closest in value

Input: array of integers
Output: array of two integers

Rules:
- test arrays always include mroe than 3 integers
- 

Examples/Modeling:
- iterate over array
- test first ele against 2nd, 3rd, 4th 
- 5 - 25 = -20 - get absolute value (20)
- 5 - 15 = 


Algorithm:
- use product to create all possible pairs - store in new array
- interate over the pairs with map - store in another array
  - use inject to minus each pair from eachother
  - get absolute vlaue of that result
- find min number
- find index
- return array of numbers

=end

def closest_numbers(array)
  new_arr = array.combination(2).to_a
  accum = array.sum
  stored_arr = []
  new_arr.each do |sub_arr|
    value = sub_arr.inject(:-).abs
    if value < accum 
      accum = value
      stored_arr = sub_arr
    end
  end
  stored_arr
end


# Examples:

p closest_numbers([5, 25, 15, 11, 20]) == [15, 11]
p closest_numbers([19, 25, 32, 4, 27, 16]) == [25, 27]
p closest_numbers([12, 7, 17]) == [12, 7]

# The tests above should print "true".