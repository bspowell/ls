=begin

- search for all multiples of 3 or 5 between 1 and indicated number
- compute the sum of those multiples
- ex. if 20, return should be 98 (3 + 5 + 6 + 9 + 10 + 12 + 15 + 18 + 20)
- assume interger is > 1

- create empty array
- take integer, put into range from 1 to that integer
- iterate through range
- if number % 3 or 5, then add to array
- return sumed array
=end 

# part 1
# def multisum(int)
#   array = []
#   (1..int).each do |num|
#     array << num if (num % 3 == 0 || num % 5 == 0)
#   end
#   array.sum
# end

# part 2 - w/ reduce
def multisum(int)
  array = []
  (1..int).each do |num|
    array << num if (num % 3 == 0 || num % 5 == 0)
  end
  array.reduce(:+)
end

p multisum(3) == 3
p multisum(5) == 8
p multisum(10) == 33
p multisum(1000) == 234168
