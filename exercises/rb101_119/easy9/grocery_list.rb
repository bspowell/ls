=begin
takes a grocery list (array) of fruits with quantities 
and converts it into an array of the correct number of each fruit.

input: array (3 elements, each element is an array of 2 elements (string, integer)
output: array of strings

map over the array to select the inner arrays
take the quantity and apply the times method to add fruit to an array


=end

def buy_fruit(fruit)
  fruit.map do |sub_arr|
    arr = []
    sub_arr[1].times { arr << sub_arr[0] }
    arr
  end.flatten
end
  

p buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]]) ==
  ["apples", "apples", "apples", "orange", "bananas","bananas"]
  