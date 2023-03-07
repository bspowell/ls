[1, 2, 3].any? do |num|
  puts num
  num.odd?
end

=begin
What is the block's return value in the following code? How is it determined? 
Also, what is the return value of any? in this code and what does it output?

blocks return value? How is it determined?
#odd? method is being invoked on each element in the array which returns a boolean:
true or false. The blocks return value is equal to the return value of 
the last line in the expresssion which is num.odd?

Also, what is the return value of any? in this code
the #any method returns true in this code. When the block being 
passed to each element evaluates as true on any element in the collection, then the method #any
will return true.

Since any? stops interating when it finds it's first truthy value, it will stop at 1.
Puts its therefore only invoked on the first element in the array, 1.

what does it output?
the output will be:
1
=> true

=end