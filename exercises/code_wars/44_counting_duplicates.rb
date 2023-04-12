=begin

Problem:
Write a function that will return the count of distinct case-insensitive
alphabetic characters and numeric digits that occur more than once 
in the input string. The input string can be assumed to contain only 
alphabets (both uppercase and lowercase) and numeric digits.

Write a method that returns the the number of alphanumerical characters
that occur more than twice in the input string.
Case-insenstivitive: 'A' = 'a'


Input: string
Output: integer

Rules:
- case insensitive
- 

Examples/Modeling:
"aABAb" => 2 - a occurs 3 times, b occurs 2 times

Algorithm:
/* given a string */
create an empty array
break string up into characters array
iterate over array
- count how many times that character occurs in the original string
- push that into the array
return and count how many numbers are 2 or greater

=end

# def duplicate_count(string)
#   arr = {}
#   string.downcase!
#   string.each_char do |char|
#     arr.keys.include?(char) ? next : arr[char] = string.count(char)
#   end
#   arr.values.count { |n| n >= 2 }
# end


p duplicate_count("abcde") #-> 0 # no characters repeats more than once
p duplicate_count("aabbcde") # -> 2 # 'a' and 'b'
p duplicate_count("aabBcde") # -> 2 # 'a' occurs twice and 'b' twice (`b` and `B`)
p duplicate_count("indivisibility") # -> 1 # 'i' occurs six times
p duplicate_count("Indivisibilities") #-> 2 # 'i' occurs seven times and 's' occurs twice
p duplicate_count("aA11") # -> 2 # 'a' and '1'
p duplicate_count("ABBA") # -> 2 # 'A' and 'B' each occur twice

