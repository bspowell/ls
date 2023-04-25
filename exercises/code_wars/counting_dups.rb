=begin

Problem:
- write a method that returns the count of alphabetic char (case insensitive)
and numeric digits that occur more than once in the input string
- the input string contains only alphanumeric charactesr


Input: string
Output: integer

Rules:
- 

Examples/Modeling:

Algorithm:
- given a string
- break into array of chars lowercased
- iterate over the chars
  - count how many times the original string includes the char
  - if > 1, +1 to counter
- return count

=end

def duplicate_count(string)
  count = 0
  str2 = string.downcase
  string.downcase.chars.each do |char|
    count += 1 if str2.count(char) > 1
    str2.delete!(char)
  end
  count 
end




p duplicate_count("abcde") #-> 0 # no characters repeats more than once
p duplicate_count("aabbcde") # -> 2 # 'a' and 'b'
p duplicate_count("aabBcde") # -> 2 # 'a' occurs twice and 'b' twice (`b` and `B`)
p duplicate_count("indivisibility") # -> 1 # 'i' occurs six times
p duplicate_count("Indivisibilities") #-> 2 # 'i' occurs seven times and 's' occurs twice
p duplicate_count("aA11") # -> 2 # 'a' and '1'
p duplicate_count("ABBA") # -> 2 # 'A' and 'B' each occur twice