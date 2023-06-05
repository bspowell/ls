=begin

Write a method that takes a string containing one or more words, 
and returns the given string 
with words that contain five or more characters reversed. 
Each string will consist of only letters and spaces. 
Spaces should be included only when more than one word is present.

input: string
output: same string, words > 5 characters reversed.

=end

def reverse_words(string)
  string.split.each { |word| word.reverse! if word.size >= 5 }.join(' ')
end


puts reverse_words('Professional')          # => lanoisseforP
puts reverse_words('Walk around the block') # => Walk dnuora the kcolb
puts reverse_words('Launch School')         # => hcnuaL loohcS