=begin 
Sum of Pairs
Given a list of integers and a single sum value, 
return the first two values (parse from the left please) 
in order of appearance that add up to form the sum.

If there are two or more pairs with the required sum,
the pair whose second element has the smallest index is the solution.

sum_pairs([11, 3, 7, 5],         10)
#              ^--^      3 + 7 = 10
== [3, 7]

sum_pairs([4, 3, 2, 3, 4],         6)
#          ^-----^         4 + 2 = 6, indices: 0, 2 *
#             ^-----^      3 + 3 = 6, indices: 1, 3
#                ^-----^   2 + 4 = 6, indices: 2, 4
#  * the correct answer is the pair whose second value has the smallest index
== [4, 2]

sum_pairs([0, 0, -2, 3], 2)
#  there are no pairs of values that can be added to produce 2.
== None/nil/undefined (Based on the language)

sum_pairs([10, 5, 2, 3, 7, 5],         10)
#              ^-----------^   5 + 5 = 10, indices: 1, 5
#                    ^--^      3 + 7 = 10, indices: 3, 4 *
#  * the correct answer is the pair whose second value has the smallest index
== [3, 7]

Problem:
- given an array and integer
- find the first two values (strating from the left)
- that sum to the integer
- if there are multiple pairs, then the pair that contains the smallest index 
number is the solution - if a pair has an indexes of 3 and 10, but the other pair
has indexs of 6 and 8, 6,8 wins.


Input: array of ints, sum value
Output: array of ints, in correct order

Rules:
- check from left to right how each combination of elements adds up
- if no pairs add up, return nil

Examples/Modeling:

Algorithm:
- given an array and sum integer
- create store hash for pairs
- iterate over array indexes with a range to collect pairs
  - iterate over array indexes starting at 1 to collect pairs
    - if current element in outter block and current element in inner
    block add to the sum value, add each into hash with indexs as values 
- create a clone of store array
- use map to iterate over store array
  - use map to iterate over sub_arr
    - use given_array.index(element) to find indexes
- find min in store_array
- select 

=end

def sum_pairs(array, sum)
  store_arr = {}
  (0...array.size).each do |first|
    (first+1...array.size).each_with_index do |second|
      if array[first] + array[second] == sum
        store_arr[[array[first], array[second]]] = [first, second]
      end
    end
  end
  return nil if store_arr.empty? 
  store_arr.sort_by do |k, v|
    v.reverse!
  end[0][0]
end

# alternative solution
# def sum_pairs(ints, s)
#   mem = {}
#   ints.each do |i|
#     return [s-i,i] if mem[s-i]
#     mem[i] = true
#   end
#   nil
# end
p sum_pairs([20, -13, 40], -7) #== nil
# p sum_pairs([11, 3, 7, 5], 10) #== [3, 7]
# p sum_pairs([4, 3, 2, 3, 4], 6) #== [4, 2]
# p sum_pairs([10, 5, 2, 3, 7, 5], 10) #== [3, 7]
