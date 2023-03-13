arr = [{a: 1}, {b: 2, c: 3}, {d: 4, e: 5, f: 6}]

# Given the following data structure and without modifying the original array, 
# use the map method to return a new array identical in structure to the original
# but where the value of each integer is incremented by 1.
# return value should equal this: [{a: 2}, {b: 3, c: 4}, {d: 5, e: 6, f: 7}]

=begin
Thoughts:
- interate original array with map since we need to return the same size array
transformed
- Within the outer map method, transform inner hash elements
- select each key and increment it's value by 1
- return as a hash

=end

arr.map do |hash|
  hash.map do |key, value|
    hash[key] = value + 1
  end
  hash.to_h
end