=begin
initialize an array 
intiialize second array
iterate over first array and add each element by two. 
save that array in the second array.

print both using p

=end

array1 = [1,2,3,4,5]

array2 = array1.map { |element| element + 2 }

p array1
p array2
