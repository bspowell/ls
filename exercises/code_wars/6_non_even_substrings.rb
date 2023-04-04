=begin
P:
Given a string of integers, 
return the number of odd-numbered substrings that can be formed.

Example:
For example, in the case of "1341", 
they are 1, 1, 3, 13, 41, 341, 1341, a total of 7 numbers.
solve("1341") = 7. 

input: string
output: integer (total number of odd_numbered substrings)

A:
/* given a string */
- break into substrings of size 1
- convert to integer, see if odd
- if odd, add to empty array
- repeat from 1 


=end

def solve(str)
  output = []
  (0...str.length).each do |first|
    (first...str.length).each do |last|
      output << str[first..last] if str[first..last].to_i.odd?
    end
  end
  output.size
end

p solve("1341") == 7
# p solve("1357") == 10
# p solve("13471") == 12
# p solve("134721") == 13
# p solve("1347231") == 20
# p solve("13472315") == 28