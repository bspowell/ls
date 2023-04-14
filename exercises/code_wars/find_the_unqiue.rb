=begin
There is an array with some numbers. All numbers are equal except for one. Try to find it!

It’s guaranteed that array contains at least 3 numbers.

The tests contain some very huge arrays, so think abou
Problem:
- given an array
- find the number that is unique


Input:
Output:

Rules:

Examples/Modeling:

Algorithm:



=end

def find_uniq(array)
  array.select do |num|
    array.count(num) == 1
  end[0]
end
p find_uniq([ 1, 1, 1, 2, 1, 1 ]) == 2
p find_uniq([ 0, 0, 0.55, 0, 0 ]) == 0.55
