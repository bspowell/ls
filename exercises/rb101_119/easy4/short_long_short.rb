=begin
Write a method that takes two strings as arguments, 
determine the longest of the two strings,
and then returns the result of concatenating the shorter string, 
the longer string, and the shorter string once again. 

You may assume that the strings are of different lengths.

input:
- two strings
output:
- concatenation of shorter string, longer string, shorter string.

Rules
- if given nil, then just return other string

take string 1 and determine its length 
take string 2 and determine its length
take the return the shorter string concatenated to longer, to shorter again
=end

def short_long_short(string_one, string_two)
  if string_one.size > string_two.size
    return string_two + string_one + string_two
  else
    return string_one + string_two + string_one
  end
end

p short_long_short('abc', 'defgh') == "abcdefghabc"
p short_long_short('abcde', 'fgh') == "fghabcdefgh"
p short_long_short('', 'xyz') == "xyz"