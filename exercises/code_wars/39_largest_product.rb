=begin

Problem:
- write a method thats takes a string of digits
- returns the greatest product of 5 consecutive digits
- 
Complete the greatestProduct method so that it'll find the greatest product of 
five consecutive digits in the given string of digits.


Input: string
Output: product of 5 digits

Rules:
- string given always contains more than 5 digits

Examples/Modeling:
greatestProduct("123834539327238239583") // should return 3240

break the string into all possible groups of 5
- iterate over string
- take string at index of length 5 and place in array
then iterate over each sub array and multiply each digit together 
- could use #inject

Algorithm:
/* given a string of digits */

- create an empty hash
- iterate over string digits, every 5
  - take string at index with a length of 5, convert to integer
  - and place into empty hash as a key
  - assign the value to the product of all the integers in the key 
- find the largest value in the hash
- return the key to that value


=end

def greatest_product(string)
  hash = {}
  
  string.each_char.with_index do |_, index|
    if index % 5 == 0
      hash[string[index, 5]] = string[index, 5].chars.map(&:to_i).inject(:*)
    end
  end
  p hash.values.max if hash.key(hash.values.max).length > 4
end

p greatest_product("123834539327238239583") == 3240
p greatest_product("395831238345393272382") == 3240
p greatest_product("92494737828244222221111111532909999") == 5292
p greatest_product("02494037820244202221011110532909999") == 0
