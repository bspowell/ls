#  write a method called select_letter, that takes a string and returns
# a new string containing only the letter that we specified.

def select_letter(string, letter)
  counter = 0
  new_string = ''
  
  loop do
    new_string << letter if string[counter] == letter
    counter += 1
    break if counter == string.size
  end
  new_string
end

question = 'How many times does a particular character appear in this sentence?'
p select_letter(question, 'a') # => "aaaaaaaa"
p select_letter(question, 't') # => "ttttt"
p select_letter(question, 'z') # => ""