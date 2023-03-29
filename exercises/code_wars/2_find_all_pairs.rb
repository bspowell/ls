=begin
P: 
You are given array of integers,
count all pairs in that array,
return their count.

IR:
- Array can be empty or contain only one value; in this case return 0
- if there are more pairs of a certain number, count each pair only once. 
E.g.: for [0, 0, 0, 0] the return value is 2 (= 2 pairs of 0s)
- Random tests: maximum array length is 1000, range of values in array is between 0 and 1000

Examples:
[1, 2, 5, 6, 5, 2] --> 2
...because there are 2 pairs: 2 and 5
[1, 2, 2, 20, 6, 20, 2, 6, 2] --> 4
...because there are 4 pairs: 2, 20, 6 and 2 (again)

A: 
/* given an array */
- iterate over the array
  - for each element, 
  - store number in stack
  - if number isn't included in stack, count occurances in array
  - if count >= 2, add 1

=end

def pairs(array)
  count = 0
  grouping = array.group_by { |i| i }
  grouping.each_value do |arr|
    count += arr.size / 2 if (arr.size / 2 > 0 )
  end
  count
end

p pairs([1, 2, 5, 6, 5, 2]) == 2
p pairs([1, 2, 2, 20, 6, 20, 2, 6, 2]) == 4
p pairs([0, 0, 0, 0, 0, 0, 0]) == 3
p pairs([1000, 1000]) == 1
p pairs([]) == 0
p pairs([54]) == 0