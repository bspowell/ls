=begin

Problem:
- given an array of integers, count all the apirs in that array and return the count
- if the array is empty, return 0

Input: array of ints
Output: ints (amount of pairs)

Rules:

Examples/Modeling:

breakdown:
- sort array
- iterate over the array
- create sub_array of pairs
- if count of sub_array index 0 is 2, count + 1
- return count

Algorithm:
- given an array
- tally all the items in the array into a hash
- iterate over the values 
  - add to count the size / 2 if size >= 2
  
=end

def pairs(array)
  count = 0
  hash = {}
  array.each do |ele|
    hash.key?(ele) ? hash[ele] << ele : hash[ele] = [ele]
  end
  hash.each_value do |arr|
    count += arr.size / 2 if arr.size > 1
  end
  count
end

p pairs([1, 2, 5, 6, 5, 2]) #== 2
p pairs([1, 2, 2, 20, 6, 20, 2, 6, 2]) == 4
p pairs([0, 0, 0, 0, 0, 0, 0]) == 3 
p pairs([1000, 1000]) == 1
p pairs([]) == 0
# p pairs([54]) == 0
