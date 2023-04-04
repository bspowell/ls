=begin
Longest vowel chain
Given a lowercase string that has alphabetic characters only and no spaces, 
return the length of the longest vowel substring. 
Vowels are any of aeiou.

Examples:
The vowel substrings in the word codewarriors are o,e,a,io. 
The longest of these has a length of 2. 

input: string
output: integer (longest vowel substring)

D/A:
/* given a string */
- break the string up into an array of chars
- start a count
- interate over the chars
  - if a vowel, count + 1
  - if a constant, count = 0
  - total = count if count > total

=end

def solve(string)
  count = 0 
  total = 0 
  string.chars.each do |char|
    char.downcase =~ /[aeoiu]/ ? count += 1 : count = 0
    total = count if count > total
  end
  p total
end

p solve("codewarriors") == 2
p solve("suoidea") == 3
p solve("iuuvgheaae") == 4
p solve("ultrarevolutionariees") == 3
p solve("strengthlessnesses") == 1
p solve("cuboideonavicuare") == 2
p solve("chrononhotonthuooaos") == 5