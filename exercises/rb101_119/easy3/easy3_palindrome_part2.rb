=begin
---------------- Problem
General revision of problem:
write a method that returns true if the string passed as an argument is a palindrom.
Case in-sentivie, ingore alphaneumeric characters.

Input: string

Output: boolean

Rules:
- case insensitive
- 

---------------- Modelling
What type of objects do you need? Array, hash, etc.

---------------- Data Structures / Algorithm
Write out pseudo-code

since it's case insentive, we can change all the letters to lowercase which will allow
.reverse to still work.

---------------- Scratchpad
- methods that might be useful....

=end
def real_palindrome?(string)
  string = string.downcase.delete('^a-z0-9')
  p string
  string.reverse == string
end


p real_palindrome?('madam') == true
p real_palindrome?('Madam') == true           # (case does not matter)
p real_palindrome?("Madam, I'm Adam") == true # (only alphanumerics matter)
p real_palindrome?('356653') == true
p real_palindrome?('356a653') == true
p real_palindrome?('123ab321') == false