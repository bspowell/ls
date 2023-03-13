arr = [{a: [1, 2, 3]}, {b: [2, 4, 6], c: [3, 6], d: [4]}, {e: [8], f: [6, 10]}]

=begin
Given this data structure write some code to return an array
which contains only the hashes where all the integers are even.

return: array
- contains hashes with even integers

array [element1(hash), element2(hash), element3(hash)]



=end

arr.select do |hash|
  hash.all? do |key, value|
    value.all? {|element| element % 2 == 0 }
  end
end
