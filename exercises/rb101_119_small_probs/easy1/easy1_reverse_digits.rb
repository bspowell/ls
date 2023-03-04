=begin

input:
- postitive integer
output:
- number in reverse

b/d
- define a method with 1 argument - int
- use reverse method
=end

def reversed_number(num)
  num = num.to_s.reverse!
  num.to_i
end

p reversed_number(12345) == 54321
p reversed_number(12213) == 31221
p reversed_number(456) == 654
p reversed_number(12000) == 21 # No leading zeros in return value!
p reversed_number(12003) == 30021
p reversed_number(1) == 1