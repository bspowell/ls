
# def missing(array)
#   new_array = (array[0]..array[-1]).to_a
#   new_array -= array
# end

def missing(arr)
new_arr = []

(arr.first..arr.last).to_a.each do |num|
  new_arr << num unless arr.include?(num)
end
new_arr
end

p missing([-3, -2, 1, 5]) == [-1, 0, 2, 3, 4]
p missing([1, 2, 3, 4]) == []
p missing([1, 5]) == [2, 3, 4]
p missing([6]) == []