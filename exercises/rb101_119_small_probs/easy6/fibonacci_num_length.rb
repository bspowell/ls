=begin
Write a method that calculates and returns the index 
of the first Fibonacci number that has the number of digits that we 
specified in the argument. (The first Fibonacci number has index 1.)

ex. So for an argument of 2, we want to return the index of the first number where
we have 2 digits.

Fibonacci sequence: the first 2 numbers are 1 by definition, 
and each subsequent number is the sum of the two previous numbers.
ex. (1, 1, 2, 3, 5, 8, 13, 21, ...) 

input: integer
outpu: integer (index)

D/A
- When given an integer
- run a fibonacci sequence until the number has the same
amount of digits as the value of integer given

fibonacci sequence
- starts wtih an array of two elements [1, 1]
- sum the last two elements of the array (#last(2))
- add to end of array
- repeat until int.to_s.size == array.last.to_s.size 

=end

def find_fibonacci_index_by_length(int)
  fib_array = [1, 1]
  until int == fib_array.last.to_s.size
    new_num = fib_array.last(2).sum
    fib_array << new_num
  end
  fib_array.size
end

p find_fibonacci_index_by_length(2) == 7          # 1 1 2 3 5 8 13
p find_fibonacci_index_by_length(3) == 12         # 1 1 2 3 5 8 13 21 34 55 89 144
p find_fibonacci_index_by_length(10) == 45
p find_fibonacci_index_by_length(100) == 476
p find_fibonacci_index_by_length(1000) == 4782
p find_fibonacci_index_by_length(10000) == 47847