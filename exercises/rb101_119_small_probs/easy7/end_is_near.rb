=begin
Write a method that returns the second last word in the String

Words are any sequence of non-blank characters.

You may assume that the input String will always contain at least two words.


=end

def penultimate(string)
  new_string = string.split
  new_string[-2]
end


p penultimate('last word') == 'last'
p penultimate('Launch School is great!') == 'is'