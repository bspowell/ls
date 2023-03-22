=begin
Give this array:

words =  ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live',
          'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide',
          'flow', 'neon']

write a program, that prints out groups of words that are anagrams.
Anagarams are words that have the exact same letters in them but in
a different order.

output should look like:
["demo", "dome", "mode"]
["neon", "none"]
#(etc)

input: array
output: array of arrays

/* given an array of strings */

- iterate over array 
- sort each string into alphabetical order
- if key exists in hash, append current word into value (array)
- otherwise, reate a new key with this sorted word
=end

def ana(words)
  sorted_words = words.map do |word|
    word.chars.sort.join
  end
  words.each_with_index do |right_word, index|
    arr = []
    arr << right_word
    words.size.times do |ind|
      arr << words[ind+1] if sorted_words[index] == sorted_words[ind+1]
    end
    p arr
  end
end

words =  ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live',
          'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide',
          'flow', 'neon']
          
ana(words)