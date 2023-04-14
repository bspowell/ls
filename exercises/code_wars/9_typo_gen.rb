=begin
Background
There is a message that is circulating via public media that claims 
a reader can easily read a message where the inner letters of each
words is scrambled, as long as the first and last letters remain 
the same and the word contains all the letters. 

Another example shows that it is quite difficult to read the text 
where all the letters are reversed rather than scrambled.

In this kata we will make a generator that generates text in a similar pattern,
but instead of scrambled or reversed, ours will be sorted alphabetically

Requirement
return a string where:

1) the first and last characters remain in original place for each word
2) characters between the first and last characters must be sorted alphabetically
3) punctuation should remain at the same place as it started, for example: shan't -> sahn't

Assumptions

1) words are separatedseperated by single spaces
2) only spaces separate words, special characters do not, for example: tik-tak -> tai-ktk
3) special characters do not take the position of the non special characters, for example: -dcba -> -dbca
4) for this kata punctuation is limited to 4 characters: hyphen(-), apostrophe('), comma(,) and period(.)
5) ignore capitalisation

Problem:

Input: string
Output: string (inner characters sorted)

Rules:

Examples/Modeling:
a = "bdca"
a[1..-2] = a[1..-2].chars.sort.join

if includes special char:
'-dcba' == '-dbca'
- special character stays the same and next letter 'd'
- we can assume then to remove special characters and then
re-insert them
- '-dcba'.gsub(/[-',]/,"") = "dcba"



Algorithm:
-given a string
- break the string up into array of words 
- map over the array of words
  - create a variable no_special and remove any special characters
  - select the characters at 1..-2 within the word and sort them
  - place the special character back into the word 
    - find the missing special character by breaking word into array of chars
    - minus the orignal word from the no_special chars word
    - find the index at which the special character is at in the original word
    - place the special character back at the correct index in the no_special word 
- after map is done. join with (' ')
=end
require 'pry'

def scramble_words(string)
  string.split.map do |word|
    if word =~ /[-',.]/
      no_special = word.gsub(/[-',.]/, "")
      no_special[1..-2] = no_special[1..-2].chars.sort.join
      special_char = word.gsub(/[a-zA-Z]/, "")
      index = word.index(special_char)
      no_special.insert(index, special_char)
    else
      word[1..-2] = word[1..-2].chars.sort.join
      word
    end
  end.join(' ')
end



p scramble_words('professionals') #== 'paefilnoorsss'
p scramble_words('i') #== 'i'
p scramble_words('') #== ''
p scramble_words('me') #== 'me'
p scramble_words('you') #== 'you'
p scramble_words('card-carrying') #== 'caac-dinrrryg'
p scramble_words("shan't") == "sahn't"
p scramble_words('-dcba') == '-dbca'
p scramble_words('dcba.') == 'dbca.'
p scramble_words("you've gotta dance like there's nobody watching, love like you'll never be hurt, sing like there's nobody listening, and live like it's heaven on earth.") == "you've gotta dacne like teehr's nbdooy wachintg, love like ylo'ul neevr be hrut, sing like teehr's nbdooy leiinnstg, and live like it's haeevn on earth."
