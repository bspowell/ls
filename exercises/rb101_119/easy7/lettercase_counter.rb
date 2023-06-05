=begin

Write a method that takes a string, 
and then returns a hash that contains 3 entries: 
one, the number of characters in the string that are lowercase letters, 
two, the number of characters that are uppercase letters, 
three, one the number of characters that are neither.

input: string
output: hash (3 entries)

iterate over string
check to see if character is lowercase by comparing to itself.downcase
- add to lowercase key +1
check to see if character is uppercase by comparing to itself.upcase
- add to uppcase key, +1
else, add to neither key + 1

=end
require 'pry'

def letter_case_count(string)
  hash = { lowercase: 0, uppercase: 0, neither: 0 }
  hash[:lowercase] = string.count("a-z")
  hash[:uppercase] = string.count("A-Z")
  hash[:neither] = string.size - hash[:lowercase] - hash[:uppercase]
  hash
end


p letter_case_count('abCdef 123') == { lowercase: 5, uppercase: 1, neither: 4 }
p letter_case_count('AbCd +Ef') == { lowercase: 3, uppercase: 3, neither: 2 }
p letter_case_count('123') == { lowercase: 0, uppercase: 0, neither: 3 }
p letter_case_count('') == { lowercase: 0, uppercase: 0, neither: 0 }