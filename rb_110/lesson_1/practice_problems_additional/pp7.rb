# Create a hash that expresses the frequency with which each letter occurs in this string:
# example: { "F"=>1, "R"=>1, "T"=>1, "c"=>1, "e"=>2, ... }

=begin
- input: string
- output: hash - keys = charaters, values = integer (frequency character occured)

We need to select each character in the string. 
Put character in hash as a key
Iterate through the string to see if character occured again
- if it does occur, plus 1 to value of character key/value pair
Return hash

=end

statement = "The Flintstones Rock"

characters = statement.chars 
new_hash = {}

characters.each do |element|
  new_hash[element] = characters.count(element)
end 

p new_hash