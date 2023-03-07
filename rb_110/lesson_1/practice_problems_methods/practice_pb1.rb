[1, 2, 3].select do |num|
  num > 5
  'hi'
end

=begin
We are invoking the select method on the array object and passing a block.
Within the block, the parameter num is assigned each element as it iterates.
Since it evalutes the last line in the expression 'hi' as truthy, it will return
a new array containing all the elements.

=end