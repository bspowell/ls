# Write a method that takes one integer argument, which may be positive, negative, or zero

def is_odd?(integer)
  integer *= -1 if integer < 0
  puts integer
  integer % 2 != 0 
end

puts is_odd?(2)    # => false
puts is_odd?(5)    # => true
puts is_odd?(-17)  # => true
puts is_odd?(-8)   # => false
puts is_odd?(0)    # => false
puts is_odd?(7)    # => true