=begin
Given the following data structure and without modifying the original array, 
use the map method to return a new array identical in structure to the original 
but where the value of each integer is incremented by 1.

return value should be: [{a: 2}, {b: 3, c: 4}, {d: 5, e: 6, f: 7}]

D/A
- map over array and save in new variable
- use each to iterate over hashes
- hsh[key] += 1
- each will return hash

=end

arr = [{a: 1}, {b: 2, c: 3}, {d: 4, e: 5, f: 6}]


new = arr.map do |hash|
  new_hsh = {}
  hash.each do |key, value|
    new_hsh[key] = value + 1
  end
  new_hsh
end

