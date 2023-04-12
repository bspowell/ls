=begin

Problem:
Write a method weirdcase
that accepts a string,
and returns the SAME string
with all even indexed characters in each word upper cased,
and all odd indexed characters in each word lower cased.
The indexing starts at 0, which is even
For each word, you need to start over. 

Input: string of words
Output: same string, mutated

Rules:
- strings only include alphabetical charactesr and spaces
- spaces will only be present if there are multiple words
- if letter is already capitalized, it can stay capitalized.

Examples/Modeling:

Algorithm:
/* given a string */
- break string up into an array of words (if multiple)
- iterate over array on each word
- for each word, iterate over each character using range to word size - 1
  - if index is even, then reassign character at that index to the same character
  uppercased.
- return origonal string

=end

def weirdcase(string)
  string.split.each do |word|
    (0...word.size).each do |ind|
      word[ind] = word[ind].upcase if ind.even?
    end
  end.join(' ')
end

p weirdcase( "String" )#=> "StRiNg"
p weirdcase( "Weird string case" );#=> "WeIrD StRiNg CaSe"