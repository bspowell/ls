=begin
 
Takes a word and a list of possible anagrams
and selects the correct sublist that contains the anagrams of the word

takes a word,
compares it to a list of words - potentially an array 
sorts the words in alphabetical order to compare 
if equal, then it's an anagram and selects the word 

Examples 
listen - list of candidates - enlists, google, inlets, banana, the program 
should return 'inlets'. 

  
=end

class Anagram

  def initialize(word)
    @word = word.downcase
  end

  def match(array)
    sorted_word = @word.chars.sort.join
    chosen_words = array.select do |new_word|
      next if @word == new_word.downcase
      sorted_word == new_word.chars.map(&:downcase).sort.join
    end
  end

end
