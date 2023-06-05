=begin 
Write a method that takes a string with one or more space separated words
and returns a hash that shows the number of words of different sizes.

Words consist of any string of characters that do not include a space.


input: string
output: hash (number of words in sizes)

rules
- if no words, return empty hash

D/A 
- take string and put into array
  - use split(' ')
- assess what size of word it is
  - use #size
- see if size is included in hash
  - hash.keys.include?(size)
- if not, place size into hash as key and add 1 to value 
- if size is there, add 1 to value
- return hash

=end

def word_sizes(string)
  array = string.split(' ')
  array.each_with_object({}) do |word, hash|
    hash.keys.include?(word.size) ? hash[word.size] += 1 : hash[word.size] = 1
  end
end


p word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 1, 6 => 1 }
p word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 1, 7 => 2 }
p word_sizes("What's up doc?") == { 6 => 1, 2 => 1, 4 => 1 }
p word_sizes('') == {}