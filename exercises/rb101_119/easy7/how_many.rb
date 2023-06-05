=begin
Write a method that counts the number of occurrences 
of each element in a given array.


The words in the array are case-sensitive: 'suv' != 'SUV'. 
Once counted, print each element alongside the number of occurrences.

input: array
output: hash

=end


vehicles = [
  'car', 'car', 'truck', 'car', 'SUV', 'truck',
  'motorcycle', 'motorcycle', 'car', 'truck'
]

def count_occurrences(vehicles)
  puts "car => #{vehicles.count('car')}"
  puts "truck => #{vehicles.count('truck')}"
  puts "SUV => #{vehicles.count('SUV')}"
  puts "motorcycle => #{vehicles.count('motorcycle')}"
end


count_occurrences(vehicles)

# car => 4
# truck => 3
# SUV => 1
# motorcycle => 2