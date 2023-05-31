
def select(array)
  counter = 0
  new_arr = []
  while counter < array.size
    if yield(array[counter]) == true
      new_arr << array[counter]
    end
    counter += 1
  end
  new_arr
end

array = [1, 2, 3, 4, 5]

puts select(array) { |num| num.odd? }      # => [1, 3, 5]
puts select(array) { |num| puts num }      # => [], because "puts num" returns nil and evaluates to false
puts select(array) { |num| num + 1 }       # => [1, 2, 3, 4, 5], because "num + 1" evaluates to true