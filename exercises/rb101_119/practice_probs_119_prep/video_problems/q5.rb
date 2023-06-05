=begin
Find the length of the longest substring in the given string that is the 
same in reverse.

Example:
If the input was "I like racecars that go fast", the substring (racecar)
length would be 7.

Example:
"a" => 1
"aab" => 2
"abcde" => 1
"zzbaabcd" => 4
"" => 0



Problem:
- given a string, find the length of the longest substring that 
is the same in reverse
- eg. "I like racecars that go fast" = 7 ("racecar")


Input: string
Output: integer (longest substring length)

Rules:
- if empty string, return 0


Examples/Modeling:
"aab"
create all the substrings
"a"
"aa"
"aab"
"ab"
if substring <= 2 
- does the whole substring include string[1]
if substring > 2
"aab"
- size / 2 = 1.5, floor, 1 
- is string[0..1] == string[1..-1]
- if yes, return string.size

"baab"
size = 4
middle = 2
s[0...middle] = ba
s[middle..-1] = ab.reverse = ba

"baaab"
size = 5
middle = 2
s[0...middle] = "ba"
s[middle+1..-1] = "ab"


Algorithm:
- given a string
- create all substrings and put into an array
- iterate over the substrings array
- if string is less than or equal to 2
  - does the whole substring = string[0]
- if string.size even?
  - take the size, divided by 2, it will round down
  - if the string from index 0 to middle not inclusive
  and see if it equals the string from middle to -1 (reversed)
  - reutrn the string size if it does
  - otherwise return -1
- if string.size odd?
  - take the size, divided by 2, it will round down
  - if the string from index 0 to middle not inclusive
  and see if it equals the string from middle + 1 to -1 (reversed)
  - reutrn the string size if it does
  - otherwise return -1


=end

def longest_palindrome(string)
  array = []
  (0...string.length).each do |first|
    (first...string.length).each do |second|
      array << string[first..second]
    end
  end
  p array
  array.map! do |sub_str|
    sub_str == sub_str.reverse ? sub_str.size : 0
  end.max
end
# p longest_palindrome("a") == 1
# p longest_palindrome("aa") == 2
# p longest_palindrome("baa") == 2
# p longest_palindrome("aab") == 2
p longest_palindrome("baabcd") == 4
# p longest_palindrome("baablkj12345432133d") == 9