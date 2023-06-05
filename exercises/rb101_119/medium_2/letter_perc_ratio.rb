=begin
Write a method that takes a string, and then returns a hash that contains 
3 entries: one represents the percentage of characters in the string that are lowercase letters, 
one the percentage of characters that are uppercase letters, 
and one the percentage of characters that are neither.

You may assume that the string will always contain at least one character.

Problem:
- method that takes a string
- returns a hash
- that contains 3 entries:
 - the percentage of characters in the string, that are lowercase
 - percentage of charactesr that are uppercase
 - percentage of characters that are neither


Input: string
Output: hash (lowercase, uppercase, neither)

Rules:
- strings always contain at least 1 letter
- percentages are float integers
- strings can contain non-alphanumerical chars

Examples/Modeling:
'abCdef 123'
- lowercase: 50.0 "abdef"
- uppercase: 10.0 "C"
- neither: 40.0 "123 "

Algorithm:
- given a string 
- init new var and assign to string total float
- init new empty hash
- init a new var lcase, assing to: count the number lowercase letters using scan a-z divided by string_total
- init a new var ucase, assing to: count the number upercase letters using scan A-Z divided by string_total
- init a new var neither, assing to:count the number non-alphanumerical letters using scan \W divided by string_total
- add lcase, ucase and netiher into hash with their values

- given a string
- init string_total to string size
- init hash to empty hash
- count(/[a-z]/)
- 


=end

def letter_percentages(string)
  string_total = string.size.to_f
  hash = {}
  lowercase = (string.count("a-z") / string_total) * 100
  uppercase = (string.count("A-Z") / string_total) * 100
  neither = (string.count("^a-zA-Z") / string_total) * 100
  hash[:lowercase] = lowercase.round(1)
  hash[:uppercase] = uppercase.round(1)
  hash[:neither] = neither.round(1)
  hash
end
 
  
p letter_percentages('abCdef 123') == { lowercase: 50.0, uppercase: 10.0, neither: 40.0 }
p letter_percentages('AbCd +Ef') == { lowercase: 37.5, uppercase: 37.5, neither: 25.0 }
p letter_percentages('123') == { lowercase: 0.0, uppercase: 0.0, neither: 100.0 }
p letter_percentages('abcdefGHI') == {:lowercase=>66.7, :uppercase=>33.3, :neither=>0.0}