=begin
Write a method that returns a list of all substrings of a string. 
The returned list should be ordered 
by where in the string the substring begins. 
This means that all substrings that start at position 0 should come first, 
then all substrings that start at position 1, and so on. 

Since multiple substrings will occur at each position, 
the substrings at a given position should be returned 
in order from shortest to longest.

input: string
output: array of substrings

D/A
/ given a string/
- create an empty array
- loop until string = ""
  - iterate over string and break into sub strings with split
  - add those substrings to an array
  - shift the front character off the string

=end

def substrings(string)
  arr = []
  until string.size == 0
    1.upto(string.size) do |ind|
      arr << string.slice(0, ind)
    end
    string.slice!(0)
  end
  p arr
end


substrings('abcde') == [
  'a', 'ab', 'abc', 'abcd', 'abcde',
  'b', 'bc', 'bcd', 'bcde',
  'c', 'cd', 'cde',
  'd', 'de',
  'e'
]