=begin 
Given a string that consists of some words (all lowercased) 
and an assortment of non-alphabetic characters.

write a method that returns that string with all of the 
non-alphabetic characters replaced by spaces

If one or more non-alphabetic characters occur in a row, 
you should only have one space in the result 
(the result should never have consecutive spaces).

input: string (lowercase, symbols included)
output: string (no symbols, just spaces)

rules
- non-alphanumeric characters are spaces
- never more than one space
- string size is the same for input and output

D/A
- take string and break up into an array for each character
- check if character is non-alphanumeric 
- if it is, replace with space
- if not, then leave it
- collapse array back into string to return

=end
require 'pry'

ALPHANUM = ('a'..'z').to_a + ('A'..'Z').to_a + (0..9).to_a

def cleanup(string)
  new_string = string.chars
  
  new_string.each_with_index do |character, ind|
    ALPHANUM.include?(character) ? character : new_string[ind] = " "
  end
  
  p new_string.join.squeeze(" ")
end

#alternative solution
# def cleanup(text)
#   text.gsub(/[^a-z]/, ' ').squeeze(' ')
# end

p cleanup("---what's my +*& line?") == ' what s my line '


