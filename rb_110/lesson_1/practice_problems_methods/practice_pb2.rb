p ['ant', 'bat', 'caterpillar'].count do |str|
  str.length < 4
end

=begin
How does count treat the block's return value? How can we find out?

#count calls the block with each element; returns the count of elements 
for which the block returns a truthy value. We find this in the docs.

This means that count considers the truthiness of the block's return value.

=end