# Given a string of words, you need to find the highest scoring word.

# Each letter of a word scores points according to it's position in the alphabet:
# a = 1, b = 2, c = 3 etc.

# You need to return the highest scoring word as a string.

# If two words score the same, return the word that appears earliest in the original string.

# All letters will be lowercase and all inputs will be valid.
=begin
- create a range of letters 
- create a range of numbers
- create a hash with letters as keys and values from 1 to 26
- iterate over the alphabet to add each key as a letter, each number as value

- create max_score_word
= create counter
- break string up into array of words
- iterate over the array
	- iterate over string per character to get size
	- check to see what letter value is in each character
	- add that value to a word_score_counter
	- if word_score_counter > counter, then push word into max_score_word
- return the highest number of the array

=end 


def alphabet_score(string)
  alpha = ('a'..'z').to_a
  hsh = {}
  
  alpha.each_with_index do |char, index|
    hsh[char] = index + 1
  end
  
  string.split.each do |word|
    max_score = 0
    word_score = 0
    word.each_char do |char|
      word_score += hsh[char]
    end
    if word_score > max_score
    

end

p alphabet_score('man i need a taxi up to ubud') == 'taxi'
# p alphabet_score('what time are we climbing up the volcano') == 'volcano'
# p alphabet_score('take me to semynak') == 'semynak'
# p alphabet_score('aa b') == 'aa'