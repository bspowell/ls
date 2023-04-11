# Given an array of numbers, for each number find out how many numbers
# in the array are smaller than it. When counting numbers, only count
# unique values. That is, if a given number occurs multiple times in
# the array, it should only be counted once.

=begin
P:
- given an array of numbers
- for each number, count all the numbers in the array that are smaller than it
- only count unique numbers
- return an array of those counts
- eg. [8,1,2,2]
   - for 8, we only will return a count of 2. Since we have 1 and 2, but dont
    count the second 2.
  - for 1, we would get a count of 0
  - for 2, we would get a count of 1
  - the return would be [2,0,1,1]

INPUT: array of numbers
OUTPUT: array of counts for each number in array

RULES:
- dont' count a smaller number if it's already been given.

MODELING:
We would first need to interate over the array to get the first number,
we can then take 8 and count all the numbers that are lower than 8 to the
same array but only with unique numbers (use uniq). Then we will only have uniq
values. 

ALGO:
/* given an array of numbers */
- create an empty 
- iterate over array with map since we need to return an array of same size
- on each iteration, count how many numbers are smaller than current elemenet
in array.uniq. 
- return that count to map method. 
- return array



=end

def smaller_numbers_than_current(array)
  new_arr = array.map do |ele| 
    array.uniq.count { |num| ele > num }
  end
end
  

# Examples:

p smaller_numbers_than_current([8,1,2,2,3]) == [3, 0, 1, 1, 2]
p smaller_numbers_than_current([1,4,6,8,13,2,4,5,4]) == [0, 2, 4, 5, 6, 1, 2, 3, 2]
p smaller_numbers_than_current([7,7,7,7]) == [0,0,0,0]
p smaller_numbers_than_current([6,5,4,8]) == [2, 1, 0, 3]
p smaller_numbers_than_current([1]) == [0]

# The tests above should print "true".