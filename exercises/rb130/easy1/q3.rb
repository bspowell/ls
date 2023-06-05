
def missing(array)
  arr = []
  (array.first..array.last).each { |num| arr << num }
  arr - array 
end 

p missing([-3, -2, 1, 5]) == [-1, 0, 2, 3, 4]
p missing([1, 2, 3, 4]) == []
p missing([1, 5]) == [2, 3, 4]
p missing([6]) == []