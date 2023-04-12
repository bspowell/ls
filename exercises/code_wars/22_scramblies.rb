=begin

Problem:
- write a method scramble(str1, str2)
- that returns true
- if a portion of str1 characters can be rearranged to match str2, 
- otherwise returns false.

Input: string
Output: boolean (true if string chars in first string, match second string)

Rules:
- Only lower case letters will be used (a-z)
- No punctuation or digits will be included.
- Performance needs to be considered.

Examples/Modeling:


Algorithm:
We can take the first string, break into an array of characters
then break up the second string into an array of characters
- iterating over the array to see if all (use .all?) chars is included 
  in the first array

=end

def scramble(string1, string2)
  string2.chars.all? do |char| 
    string1.chars.include?(char)
  end
end



p scramble('rkqodlw', 'world') #==> True
p scramble('cedewaraaossoqqyt', 'codewars') # ==> True
p scramble('katas', 'steak') #==> False