
=begin
Turn this array into a hash where the names are the keys and the values are the positions in the array.

each_with_object ({}) |(key,value), index|
each_with_index |element, index|

=end
#solution 1 
flintstones = ["Fred", "Barney", "Wilma", "Betty", "Pebbles", "BamBam"]

count = 0
flintstones.each_with_object({}) do |element, hash|
  hash[element] = count
  count += 1
end

#solution 2
flintstones = ["Fred", "Barney", "Wilma", "Betty", "Pebbles", "BamBam"]

new_hash = {}
flintstones.each_with_index() do |element, index|
  new_hash[element] = index
end
