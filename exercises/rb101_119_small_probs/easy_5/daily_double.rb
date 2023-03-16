=begin

Write a method that takes a string argument 
and returns a new string 
that contains the value of the original string 
with all consecutive duplicate characters collapsed into a single character. 
You may not use String#squeeze or String#squeeze!.


input: string
output: new string (removed duplicate letters)

D/A

create new empty string
iterate over passed string to compare characters with the next <=>,
if the same, next
if different, add string to new string

=end


def crunch(string)
  new_string = ''
  string.chars.each_with_index do |char, ind|
    new_string << char if (string[ind] <=> string[ind+1]) != 0
  end
  new_string
end

p crunch('ddaaiillyy ddoouubbllee') == 'daily double'
p crunch('4444abcabccba') == '4abcabcba'
p crunch('ggggggggggggggg') == 'g'
p crunch('a') == 'a'
p crunch('') == ''

