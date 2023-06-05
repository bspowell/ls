=begin

Problem:
- sort an array using the bubble sort method
- bubble sort
  - compares the first two elmenets to see which is greater
    - if the if e1 is greater, then swap 
  - this process repeats through the array until no swaps are made


Input: array
Output: same array, sorted 

Rules:
- the array will contain at least 2 elements
- needs to work with numbers and strings

Examples/Modeling:
[6, 2, 7]
index at 0, compare index and index + 1
6 > 2 
yes, swap elements a[ind], a[ind+1] = a[ind+1], a[ind]
[2, 6, 7]
index at 1, compare index and index + 1
6 > 7
no. 
check, is array sorted? [2,6,7] == [2,6,7].sort
if yes, return sorted array

Algorithm:
- given an array
- create a loop
  - iterate over the array
  - if el at index is greater than el at index 1, swap
  - otherwise next
- break loop if array = array.sort

=end

require 'pry'

def bubble_sort!(arr)
  loop do
    (0...arr.size - 1).each do |index|
      if arr[index] > arr[index + 1]
        arr[index], arr[index+1] = arr[index+1], arr[index]
      end
    end
    break if arr == arr.sort
  end
  arr
end

array = [5, 3]
p bubble_sort!(array) #== [3, 5]

array = [6, 2, 7, 1, 4]
p bubble_sort!(array) #== [1, 2, 4, 6, 7]

array = %w(Sue Pete Alice Tyler Rachel Kim Bonnie)
p bubble_sort!(array) #== %w(Alice Bonnie Kim Pete Rachel Sue Tyler)