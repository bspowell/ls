words = "the flintstones rock"

new_words = words.split.map do |word|
  word.capitalize
end

p new_words.join(" ")