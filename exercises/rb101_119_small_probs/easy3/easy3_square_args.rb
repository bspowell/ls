# Using the multiply method from the "Multiplying Two Numbers" problem, 
# write a method that computes the square of its argument (the square is 
# the result of multiplying a number by itself).

# What if we wanted to generalize this method to a "power to the n" type method: 
# cubed, to the 4th power, to the 5th, etc. How would we go about doing so 
# while still using the multiply method?

def multiply(int1, int2)
  int1 * int2
end

def power_to_the(num, power)
  new_num = num
  while power > 1 do
    new_num = multiply(new_num, num)
    power -= 1
  end
  new_num
end

p power_to_the(5, 4) == 625
p power_to_the(-8, 4) == 4096