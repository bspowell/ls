['ant', 'bear', 'cat'].each_with_object({}) do |value, hash|
  hash[value[0]] = value
end


=begin
What is the return value of each_with_object in the following code? Why?

value is assigned to the current element in the array/
hash is assigned to the object passed in by the method.

value[0] would then equal the first character of the string object element. 
when we do hash [], we are creating a new key value pair. 

so hash[value[0]] = value, for the first value would be hash['a'] = 'ant'

#each_with_object returns the collection object that was passed in as an argument.

In this case would be
{'a' => 'ant', 'b' => 'bear', 'c' => 'cat'}

=end