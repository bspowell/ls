{ a: 'ant', b: 'bear' }.map do |key, value|
  if value.size > 3
    value
  end
end

=begin
What is the return value of map in the following code? Why?

#map performs a transformation on the elements in the collection it is given - in this
case its the hash. It returns a new array of elements returned by the block. 

When looking at the if statement and condition value.size > 3, it will evalute as false for 
the first value 'ant' and evalute as true for the second value 'bear'. Since we dont satisfy the condition 
in the if statement for 'ant'. The if statement itself returns nil.

For 'bear', the if statement evlauates as true, we then get the return value of 'bear'

The final return value of map is [nil, 'bear']. 


=end