=begin
Write a method that takes a string as an argument, 
and returns true if all parentheses in the string 
are properly balanced, false otherwise. To be properly balanced,
parentheses must occur in matching '(' and ')' pairs.

Problem:
- takes a string
- returns true if all parentheses in the string are balanced, false otherwise
- balanced means parenthesis must have matching pairs "(" and ")"

Input: string
Output: boolean (if all () are matching)

Rules:
- has to be in order ( ) not ) (

Examples/Modeling:
')Hey!(' == false
- push a ( onto the new array
- pop(2) if ) comes
- if array isn't empty at the end then it's false
eg. '((What) (is this))?' == true
( = [(]
( = [(,(]
) = [(]
( = [(,(]
) = [(]
) = []

Algorithm:
- given a string
- break string into chars and iterate over it with array object
  - if char equal "(", then push into array
  - if char equal ")" and array is empty, pop item from array
    - if array is nto empty, return false
- if array is empty at the end, return true


=end

def balanced?(string)
  arr = []
  string.chars.each do |char|
    arr.push(char) if char == '('
    if char == ")" && !arr.empty?
      arr.pop
    elsif char == ")" && arr.empty?
      return false
    end
  end
  arr.empty?
end

p balanced?('What (is) this?') == true
p balanced?('What is) this?') == false
p balanced?('What (is this?') == false
p balanced?('((What) (is this))?') == true
p balanced?('((What)) (is this))?') == false
p balanced?('Hey!') == true
p balanced?(')Hey!(') == false
p balanced?('What ((is))) up(') == false