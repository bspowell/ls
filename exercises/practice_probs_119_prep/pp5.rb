# Write a method that takes a string as an argument and returns
# the character that occurs least often in the given string.
# If there are multiple characters with the equal lowest number
# of occurrences, then return the one that appears first in the
# string. When counting characters, consider the uppercase and
# lowercase version to be the same.

=begin

Problem:
- method that takes a string
- returns the character that occurs LEAST often
- If there are mutliple with the same count, return the character 
that comes first in the string. 
- uppercase and lowercase versions are the same

Input: string of words
Output: lowercase char

Rules:
- uppercase and lowercase are the same
- spaces are considered characters


Examples/Modeling:

Algorithm:
/*given a string */
- break up characters and assign them as keys into a hash
- put character counts as values assign it to the correct char
- select the characters with minimum value
- if multiple, then see where the character lies within index 
- return char

=end

def least_common_char(string)
  hash = {}
  string.downcase!.chars.each do |char|
    hash[char] = string.count(char)
  end
  hash.key(hash.values.min)
end


# Examples:

p least_common_char("Hello World") #== "h"
p least_common_char("Peter Piper picked a peck of pickled peppers") #== "t"
p least_common_char("Mississippi") #== "m"
p least_common_char("Happy birthday!") #== ' '
p least_common_char("aaaaaAAAA") #== 'a'

# The tests above should print "true".