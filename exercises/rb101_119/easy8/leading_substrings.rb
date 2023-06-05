=begin
Write a method that returns a list of all substrings of a string
that starts at the beginning of the original string. 
The return value should be arranged in order from shortest to longest substring.

input: string
output: array (all substrings) 
- sorted from shortest to longest

=end

def leading_substrings(string)
  arr = []
  1.upto(string.size) do |ind|
    arr << string.slice(0, ind)
  end
  arr
end

p leading_substrings('abc') == ['a', 'ab', 'abc']
p leading_substrings('a') == ['a']
p leading_substrings('xyzzy') == ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']