=begin
---------------- Problem
General revision of problem:
write a method that returns true if string is passed as a palindrome, false otherwise
case matters as does punctuation and spaces

Input: string

Output: boolean - true if a palidrome

Rules:
- case matters 
- punctation matters
- returns boolean

---------------- Modelling
What type of objects do you need? Array, hash, etc.

---------------- Data Structures / Algorithm
Write out pseudo-code

write a method that takes one argument
Within the method definition, use the reverse method to change the value of the passed argument
use this as the return value.

---------------- Scratchpad
- methods that might be useful....

.reverse - compare against

=end

=begin
PART 2

Method that determines an array or string is a palindrom. 

rules
- method takes array or string argument 
- returns true if it is.

=end

def palindrome?(string)
  string.reverse == string
end
p palindrome?(["I", "ama", "I"]) == true
p palindrome?(['m', nil,'d', nil,'m']) == true
p palindrome?('Madam') == false          # (case matters)
p palindrome?("madam i'm adam") == false # (all characters matter)
p palindrome?('356653') == true