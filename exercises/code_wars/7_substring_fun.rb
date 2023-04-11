=begin
P:
take an array of strings
concatenate the nth letter from each word to create a new word
return this word as a string
For each word, n is equal to the index the word is at.

Examples:
["yoda", "best", "has"]  -->  "yes"
  ^        ^        ^
  n=0     n=1     n=2

INPUT: array of strings
OUTPUT: strings

IMPLICIT RULES:
- case sensitive for returning string
- words can contain special characters
- empty arrays return empty string

EXPLICIT RULES:
- return 1 word string
- test cases contain valid word lenghts for each word in array,
won't receive a word that's too short for it's index length.


MODELING / EXAMPLES:

ALGO:
/* given an array of strings */
- create an empty string and assign it to new var new_str
- interate over each element in the array and keep track of index
- use the String#[] to select the character at the current index
- push that into the empty new_str variable
- once completed iterating over array, return new_str

=end

def nth_char(array)
  new_str = ''
  array.each_with_index do |word, ind|
    new_str << word[ind]
  end
  new_str
end

p nth_char(['yoda', 'best', 'has']) == 'yes'
p nth_char([]) == ''
p nth_char(['X-ray']) == 'X'
p nth_char(['No', 'No']) == 'No'
p nth_char(['Chad', 'Morocco', 'India', 'Algeria', 'Botswana', 'Bahamas', 'Ecuador', 'Micronesia']) ==  'Codewars'
