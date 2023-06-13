=begin
Reduce method iterates through array
passes two arguments to the block - accumulator object and current element
return value of the block is assigned to accumulator object



=end 

def reduce(array, accumulator=array[0].class.new)
  counter = 0 
  result = accumulator

  while counter < array.size
    current = array[counter]
    result = yield(result, current)
    counter += 1
  end
  result
end



array = [1, 2, 3, 4, 5]

# puts reduce(array) { |acc, num| acc + num }                    # => 15
# puts reduce(array, 10) { |acc, num| acc + num }                # => 25
# puts reduce(array) { |acc, num| acc + num if num.odd? }        # => NoMethodError: undefined method `+' for nil:NilClass

# p reduce(['a', 'b', 'c']) { |acc, value| acc += value }     # => 'abc'
p reduce([[1, 2], ['a', 'b']]) { |acc, value| acc + value } # => [1, 2, 'a', 'b']