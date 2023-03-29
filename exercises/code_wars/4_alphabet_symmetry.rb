=begin
P:
Given an array of words, return an array
of the number of letters that occupy their positions in the alphabet for each word. 

Implicit rules:
Input will consist of alphabet characters, both uppercase and lowercase. No spaces.

Example:
solve(["abode","ABc","xyzD"]) = [4, 3, 1]

A:
/* given an array of strings */
- create an array with the alphabet
- interate over array (map)
  - interate over each string
    - see char + index = char and index position in comparison array
    - if so count += 1
  - return count
- return array

=end
require 'pry'
def solve(array)
  alpha = ('a'..'z').to_a
  array.map do |string|
    count = 0
    string.chars.each_with_index do |char, ind|
      count += 1 if ind == alpha.index(char.downcase)
    end
    count
  end
end

p solve(["abode","ABc","xyzD"]) == [4,3,1]
p solve(["abide","ABc","xyz"]) == [4,3,0]
p solve(["IAMDEFANDJKL","thedefgh","xyzDEFghijabc"])== [6,5,7]
p solve(["encode","abc","xyzD","ABmD"]) == [1, 3, 1, 3]