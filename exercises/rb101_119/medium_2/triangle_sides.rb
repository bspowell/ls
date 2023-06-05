=begin
A triangle is classified as follows:
- equilateral All 3 sides are of equal length
- isosceles 2 sides are of equal length, while the 3rd is different
- scalene All 3 sides are of different length

To be a valid triangle, 
the sum of the lengths of the two shortest sides 
must be GREATER than the length of the longest side, 
and all sides must have lengths greater than 0: 

if either of these conditions is not satisfied, the triangle is invalid.

Write a method that takes the lengths of the 3 sides of a triangle as arguments, 
and returns a symbol :equilateral, :isosceles, :scalene, 
or :invalid depending on whether the triangle is 
equilateral, isosceles, scalene, or invalid.

Problem:
- given 3 integers (3 sides of a triangle)
- return a symbol :equilateral, :isoceles, :scalene or :invalid
- depending on what the triange is
- validate it's a triangle
  - sum of the two shortest sides must be GREATER than the longest
  - all sides must be greater than 0

Input: 3 integers
Output: symbol

Rules:
- if a side is 0, invalid
- 2 sides added up need to be greater than other 1
- equilateral = all sides are same
- isoceles = two sides are equal
- scalene = all sides are different
- 

Examples/Modeling:


Algorithm:
- given 3 ints
- init new array and add all 3 ints as elements
- if any of the elements contains 0, return :invalid
- check to see if valid triangle
  - sort array
  - if the sum of first two elements > third, then valid.
  - if not, return :invalid
- scalene:
  - if all numbers are different, return :scalene
  - could iterate with all? and check count = 1
  - retrun :scalene
- Equilanteral:
  - if all = first element
  - return :equilateral
- isoceles:
  - any element count equals 2
  - return :isoceles

=end


def triangle(int1, int2, int3)
  arr = [int1, int2, int3]
  return :invalid if arr.any?(0) || arr.sort![0..1].sum < arr[2]
  
  case
  when arr.uniq.count == 1 then :equilateral
  when arr.uniq.count == 2 then :isosceles
  else :scalene
  end
end
p triangle(3, 3, 3) == :equilateral
p triangle(3, 3, 1.5) == :isosceles
p triangle(3, 4, 5) == :scalene
p triangle(0, 3, 3) == :invalid
p triangle(3, 1, 1) == :invalid