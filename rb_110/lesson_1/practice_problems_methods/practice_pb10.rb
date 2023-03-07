[1, 2, 3].map do |num|
  if num > 1
    puts num
  else
    num
  end
end

=begin
What is the return value of the following code? Why?


#map is transformational. It will return a new array and each element transformed based
on the return value of the block. 

For the first element,we don't satisfy if statement condition so we return local variable num
which is 1.

For the second element, we satisfy if statement condition so we output 2, and return nil

For the third element, we satisfy if statement condition so we output 3, and return nil

Therefore the output would be:
2
3
=> [1, nil, nil]
=end