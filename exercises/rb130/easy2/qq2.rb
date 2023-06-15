
def zip(arr1, arr2)
  (0..arr1.size).each_with_object([]) do |arr, num|
    arr << [arr1[num], arr2[num]]
  end

end 


p [1, 2, 3].zip([4, 5, 6]) == [[1, 4], [2, 5], [3, 6]]