=begin
---------------- Problem
General revision of problem:
ask for a user input of of a word or multiple words. Return the num of characters. Spaces should not be counted.

Input: string (one or multiple words)

Output: integer (num of characters)

Rules:
- don't count spaces as characters

---------------- Modelling
What type of objects do you need? Array, hash, etc.

---------------- Data Structures / Algorithm
Write out pseudo-code

ask user to write some words
convert the words input into an array with each element a character in the string
remove all instances of spaces
count the size of the array
return the character count back to the user in a string

---------------- Scratchpad
- methods that might be useful....
- .chars to put characters into method
- .include ' '
- .size
- .delete
=end

# puts "Write a few words:"
# input = gets.chomp
# array = input.chars

# array.delete(' ')
# word_size = array.size

# puts "There are #{word_size} characters in \"#{input}\" "

# greeting = "Write a few words"
greeting = ["write", "a", "few", "words"]
p greeting.delete('e')
p greeting