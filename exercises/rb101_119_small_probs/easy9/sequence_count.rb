=begin
method that takes two integers
First argument is a count, second is the first number in a sequence
Your method will create the seequence
The method will return an array
it contains the same number of elements as count
values of each element will be multiples of the starting number

You may assume that count will alwasy be > 0. 
Starting number can be any integer value.
if count == 0, an empty list should be reutrned

input: count, first number in sequence
output: array

/*given count and start number */
- add start number 

=end

def sequence(count, start)
  return [start]*count if start == 0
  (start..start*count).step(start).to_a
end

# alternative solution
# def sequence(count, first)
#   (1..count).map { |value| value * first }
# end

p sequence(5, 1) == [1, 2, 3, 4, 5]
p sequence(4, -7) == [-7, -14, -21, -28]
p sequence(3, 0) == [0, 0, 0]
p sequence(0, 1000000) == []