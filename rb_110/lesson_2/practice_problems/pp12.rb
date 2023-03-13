arr = [[:a, 1], ['b', 'two'], ['sea', {c: 3}], [{a: 1, b: 2, c: 3, d: 4}, 'D']]

=begin 
Given the following data structure, and without using the Array#to_h method, 
write some code that will return a hash 
where the key is the first item in each sub array 
and the value is the second item.

expected return value: {:a=>1, "b"=>"two", "sea"=>{:c=>3}, {:a=>1, :b=>2, :c=>3, :d=>4}=>"D"}

return: hash
key = first item in each sub aray
value = second item

each_with_object({}) |element, hash| - for first array to turn into hash

=end

#my solution
arr.each_with_object({}) do |element, hash|
  hash[element[0]] = element[1]
end 

=begin
remember you can always create hashes or objects before hand and
push objects in that collection

hsh = {}
arr.each do |item|
  hsh[item[0]] = item[1]
end
hsh # => {:a=>1, "b"=>"two", "sea"=>{:c=>3}, {:a=>1, :b=>2, :c=>3, :d=>4}=>"D"}

=end