# Write your own version of the rails titleize implementation.

def titleize_word(words)
  b_words = words.split 
  b_words.each do |word|
    word.capitalize!
  end
  b_words.join(' ')
end

words = "the flintstones rock"

p titleize_word(words)