[1, 2, 3].reject do |num|
  puts num
end

=begin
What is the return value of reject in the following code? Why?

Returns a new Array whose elements are all those from self for which the block returns false or nil:

Since the block returns nil for each element in the array, we return a new array of the same elements.


=end