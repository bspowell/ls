=begin
---------------- Problem
General revision of problem:
the || operator reutrns a truthy value if either or both of its operands are truthy.
If both operands are falsey, it returns a falsey value. 
The && operator returns a truthy value if both of its oeprands are truthy, and a
falsey value if either operand is falsey. 

write a emthod that takes two arguemnts, returns true if exactly one of its arguments
is truthy. False otherwise. Boolean result instead of truthey / falsey value that is
returned by || and &&

Input: two booleans

Output: one boolean

Rules:


---------------- Modelling
What type of objects do you need? Array, hash, etc.

---------------- Data Structures / Algorithm
Write out pseudo-code

Take two boolean arguments and evaluate them using the exlusive or operation ^
return boolean


---------------- Scratchpad
- methods that might be useful....

=end


def xor?(one, two)
    one ^ two
end

puts xor?(5.even?, 4.even?) == true
p xor?(5.odd?, 4.odd?) == true
p xor?(5.odd?, 4.even?) == false
p xor?(5.even?, 4.odd?) == false