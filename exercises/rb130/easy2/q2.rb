def zip(arr1, arr2)
  new_arr = []
  (0...arr1.size).each do |index|
    new_arr << [arr1[index], arr2[index]]
  end
  new_arr
end


puts [1, 2, 3].zip([4, 5, 6]) == [[1, 4], [2, 5], [3, 6]]

puts zip([1, 2, 3], [4, 5, 6]) == [[1, 4], [2, 5], [3, 6]]