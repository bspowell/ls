=begin
P:
given a number 
and a set of one or more numbers
find the sum of all multiples of the numbers in the set that are less
than the first number

if set of numbers not given, use a default set of 3 and 5

examples:
20 natural number, 3 and 5 set
multiples of 3 and 5 would be 3,6,9,10,12,15,18
The sum is 78

algo:
if no set of numbers, use default 3 and 5 and add to total
if set of numbers, take the set of numbers and put into array
iterate over each one
for each number
  loop until value > natural number 
  starting at a counter of 1
  add number to total sum
  multiple each one by the counter
  check to see if it's over natural number, if over, go to next number
end


=end 


class SumOfMultiples

  def initialize(*numbers)
    @range = (numbers.size > 0) ? numbers : [3,5]
  end

  def self.to(natural)
    SumOfMultiples.new().to(natural)
  end

  def to(natural)
    total = []
    @range.each do |number|
      value = number
      counter = 2
      until value >= natural
        total << value
        value = number * counter
        counter += 1
      end
    end
    total.uniq.sum
  end
end

# class SumOfMultiples
#   attr_reader :multiples

#   def self.to(num)
#     SumOfMultiples.new().to(num)
#   end

#   def initialize(*multiples)
#     @multiples = (multiples.size > 0) ? multiples : [3, 5];
#   end

#   def to(num)
#     total = (1...num).select do |current_num|
#       any_multiple?(current_num)
#     end
#     p total 
#     total.sum
#   end

#   private

#   def any_multiple?(num)
#     multiples.any? do |multiple|
#       (num % multiple).zero?
#     end
#   end
# end

# puts SumOfMultiples.new(7, 13, 17).to(20)

puts SumOfMultiples.to(100)