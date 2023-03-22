=begin

write a method, takes an array of integers
multiplies all the numbers together,
divides result by the number of entries in the array,
rounds the result to 3 decimal places, then prints the result

assume rray is non-empty.

input: array of ints
output: float (product of all entries/num of entries)

=end

def show_multiplicative_average(array)
  new_float = array.inject(:*) / array.size.to_f
  format('%.3f', new_float)
end


p show_multiplicative_average([3, 5])                # => The result is 7.500
p show_multiplicative_average([6])                   # => The result is 6.000
p show_multiplicative_average([2, 5, 7, 11, 13, 17]) # => The result is 28361.667