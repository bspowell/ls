=begin
Complete the solution so that it returns the number of times the search_text is found within the full_text.

Example:
solution('aa_bb_cc_dd_bb_e', 'bb') # should return 2 since bb shows up twice
solution('aaabbbcccc', 'bbb') # should return 1

Problem:
- see how many times the second string occurs in the first string

Input: 2 strings
Output: integer (times occured)

Rules:
- can have special characters

Examples/Modeling:

breakdown:
- break string into array of characters
- iterate over the characters

Algorithm:
- given 2 strings
- scan the string to see if it contains second string


=end

def solution(string1, string2)
  string1.scan(/#{string2}/).length
  
end
  
  
p solution('abcdeb','b') == 2
p solution('abcdeb', 'a') == 1
p solution('abbc', 'bb') == 1