#Question 1
#arr = ["b", "a"]
#arr = arr.product(Array(1..3))
# after product arr = [["b",1],["b",2],["b",3],["a",1],["a",2],["a",3]]

#arr.first.delete(arr.first.last)
# arr.first = ["b",1]
# arr.first.last = 1 
# delete removes all instances of that value from array. Since we
# are in the arr.first, it will remove just 1 from the first array element in arr.

#Question 2
arr = ["b", "a"]
arr = arr.product([Array(1..3)]) # [[1,2,3]]
# after product arr = [[["b",[1,2,3]],["a",[1,2,3]]]

print arr.first.delete(arr.first.last)
#removes [1,2,3]