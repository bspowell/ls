# Write a method that takes a string as an argument and returns
# the character that occurs least often in the given string.
# If there are multiple characters with the equal lowest number
# of occurrences, then return the one that appears first in the
# string. When counting characters, consider the uppercase and
# lowercase version to be the same.

=begin

Problem:
- takes a string
- returns the character that occurs least often
- if multiple characters have lowest value, 
return the character that appears first in the string
- uppercase and lowercase are the same


Input: string
Output: character (lowest occurance)

Rules:
- uppercase and lowercase desn't matter whne counting
- special characters count to - spaces, !, etc 

Examples/Modeling:

Algorithm:
- given a string
- break string into an array of chars
- iterate over chars with map
  - use count on the character and the string.downcase
  - this will return the count
- find the min value's index of the array
- use that index to return the string[index]'s value in lowercase

=end

# Examples:

def least_common_char(string)
  new_str = string.downcase.chars.map do |char|
    string.downcase.count(char)
  end
  string.downcase[new_str.index(new_str.min)]
end

p least_common_char("Hello World") #== "h"
p least_common_char("Peter Piper picked a peck of pickled peppers") #== "t"
p least_common_char("Mississippi") #== "m"
p least_common_char("Happy birthday!") #== ' '
p least_common_char("aaaaaAAAA") #== 'a'

# The tests above should print "true".