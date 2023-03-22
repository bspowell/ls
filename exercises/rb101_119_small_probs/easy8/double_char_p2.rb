=begin
Write a method that takes a string, 
and returns a new string
which every consonant character is doubled. 
Vowels (a,e,i,o,u), digits, punctuation, and whitespace should not be doubled.


=end

def double_consonants(string)
  string.chars.map do |char|
    char =~ /[^aeiouAEIOU0-9\W]/ ? char * 2 : char
  end.join
end

p double_consonants('String') == "SSttrrinngg"
p double_consonants("Hello-World!") == "HHellllo-WWorrlldd!"
p double_consonants("July 4th") == "JJullyy 4tthh"
p double_consonants('') == ""