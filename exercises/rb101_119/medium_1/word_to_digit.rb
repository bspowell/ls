=begin

Write a method that takes a sentence string as input, 
and returns the same string with any sequence of the 
words 'zero', 'one', 'two', 'three', 'four', 'five',
'six', 'seven', 'eight', 'nine' converted to a string of digits.


Problem:
- method that takes a sentence string as input
- returns SAME string, mutated
- words 'zero', 'one', 'two', 'three', 'four', 'five',
'six', 'seven', 'eight', 'nine' converted to string of digits


Input:string
Output: string, mutated

Rules:

Examples/Modeling:
eg. "five five five one two three four" => "5 5 5 1 2 3 4"
hash = {
  "five" => '5'
}

Algorithm:
- create a hash global var with all words as keys and their number equivalent in values
- given a string in method
- break string into an array of words
- iterate over array with map mutating
  - if word = key, replace word with value equivalent
- join array back together

=end
  HASH = {
    "zero" => "0",
    "one" => "1",
    'two' => "2",
    'three' => "3",
    'four' => "4",
    'five' => "5",
    'six' => "6",
    'seven' => "7",
    'eight' => "8",
    'nine' => "9"
  }

def word_to_digit(string)
  HASH.keys.each do |word|
    string.gsub!(word, HASH[word])
  end
  string
end

p word_to_digit('Please call me at five five five one two three four. Thanks.') == 'Please call me at 5 5 5 1 2 3 4. Thanks.'