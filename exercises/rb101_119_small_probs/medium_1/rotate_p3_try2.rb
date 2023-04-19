=begin

Problem:
- take a number, rotate it left by 1
- keep the first number fixed, and rotate again
- keep the first 2 numbers fixed and rotate again 
- do this for the enture number

Input: integer
Output: integer (max rotation)

Rules:

Examples/Modeling:

Algorithm:



=end

def rotate_rightmost_digits(integer, number)
  return integer if number <= 1
  integer = integer.digits.reverse
  (integer[0...-number] + rotate_array(integer[-number..-1])).join.to_i
end

def rotate_array(array)
  array[1..-1] + [array[0]]
end

def max_rotation(integer)
  max_integer = integer
  integer.to_s.size.downto(1) do |ind|
    max_integer = rotate_rightmost_digits(max_integer, ind)
  end
  max_integer
end


p max_rotation(735291) #== 321579
p max_rotation(3) == 3
p max_rotation(35) == 53
p max_rotation(105) == 15 # the leading zero gets dropped
p max_rotation(8_703_529_146) == 7_321_609_845