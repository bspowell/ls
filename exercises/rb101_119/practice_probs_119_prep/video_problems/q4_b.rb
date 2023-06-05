=begin
write a function scramble(str1, str2) that reutrns true if a portion of str1 
characters can be rearranged to match str2, otherwise return false.

For example:
str1 is 'rkqodlw' and str2 is 'world' the output should return true
str1 is 'cedewaraaossoqqyt' and str2 is 'codewars' should return true.
str1 is 'katas' and str2 is 'steak' should return false

Only lowercase letters will be used. No digits or punctuation. 


Problem:
- get given two strings
- if the first string characters can be rearranged to match str2, return true
- otherwise false


Input: two strings
Output: boolean

Rules:
- no punctuation 

Examples/Modeling:

Algorithm:
- given two strings
- break the second string into an array of characters
- iterate over the array
  - check if the character is included in str1
  - if it is, sub the character in str1 for an empty string ""
  this will remove the first instance of that character
  - if isn't, return false
  - return true

=end

def scramble(str1, str2)
  str2.chars.each do |char|
    return false if !str1.include?(char)
    str1.sub!(char, "")
  end
  true
end


p scramble('javaass', 'jjss') == false
p scramble('rkqodlw', 'world') == true
p scramble('cedewaraaossoqqyt', 'codewars') == true
p scramble('katas', 'steak') == false
p scramble('scriptjava', 'javascript') == true
p scramble('scriptingjava', 'javascript') == true

