=begin
write a method that takes a single String,
returns a new string,
that contains the original value 
with the first character of every word capitalized and all others lowercase

You can assume words are any sequence of non-blank characters

input: string
output: new string (capitalized)

d/a
- take the string, split it into an array for each word
- iterate over array and capitalize each word
- join array

=end
# Solution 1:

# def word_cap(string)
#   new_string = string.split.each(&:capitalize!)
#   new_string.join(' ')
# end

# Further Exploration

def word_cap(string)
  new_string = string.downcase.split.each do |word|
    word[0] = word[0].upcase
  end
  p new_string.join(' ')
end


p word_cap('four score and seven') == 'Four Score And Seven'
p word_cap('the javaScript language') == 'The Javascript Language'
p word_cap('this is a "quoted" word') == 'This Is A "quoted" Word'