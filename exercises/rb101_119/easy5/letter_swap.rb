=begin 
Given a string of words separated by spaces, 
write a method that takes this string of words and 
returns a string in which the first and last letters of every word are swapped.

You may assume that every word contains at least one letter, 
and that the string will always contain at least one word. 
You may also assume that each string contains nothing but words and spaces.

input: string
output: string (first last letter of every word swapped)

rules
- every word contains at least one letter 
- string will always contain at least one word
- each string contains nothing but words and spaces


D/A:
Take the string and put each word into an array
iterate over the array of words
Select the first letter of the word 
select the last letter of the word
assign the first to the last and last to the first


=end

def swap(string)
  return string if string.size == 1
  
  new_string = string.split(' ')
  new_string.each do |word|
    first = word[0]
    last = word[-1]
    word[0] = last
    word[-1] = first
  end
  new_string.join(' ')
end

p swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
p swap('Abcde') == 'ebcdA'
p swap('a') == 'a'

