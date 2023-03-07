def multiply(numbers, transform_criteria)
  counter = 0
  new_array = []
  loop do
    break if counter == numbers.size
    
    new_array << numbers[counter] * transform_criteria
    
    counter += 1
  end

  new_array
end

p my_numbers = [1, 4, 3, 7, 2, 6]
p multiply(my_numbers, 3) # => [3, 12, 9, 21, 6, 18]