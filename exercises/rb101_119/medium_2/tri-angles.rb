=begin
A triangle is classified as follows:

right: One angle of the triangle is a right angle (90 degrees)
acute:  All 3 angles of the triangle are less than 90 degrees
obtuse: One angle is greater than 90 degrees.

To be a valid triangle, 
the sum of the angles must be exactly 180 degrees, 
and all angles must be greater than 0: 
if either of these conditions is not satisfied, the triangle is invalid.

Write a method that takes the 3 anglesof a triangle as arguments,
and returns a symbol :right, :acute, :obtuse, or :invalid
depending on whether the triangle is a right, acute, obtuse, or invalid triangle.

You may assume integer valued angles
so you don't have to worry about floating point errors.
You may also assume that the arguments are specified in degrees.


Problem:
- take 3 angles of a triangle as arguments
- check if valid triangle
  - sum of angles must equal 180
  - all angles > 0
- return a symbol: right, acute, obtuse, or invalid depending on angles
  - right: One angle of the triangle is a right angle (90 degrees)
  - acute:  All 3 angles of the triangle are less than 90 degrees
  - obtuse: One angle is greater than 90 degrees.


Input: 3 integers (angles)
Output: symbol (triangle type)

Rules:
- all angles equal 180
- all angles > 0

Examples/Modeling:

Algorithm:
- given 3 integers
- init new array, push into array
- check if valid triangle
  - if sum of angles is not 180 or any angle equals 0, return :invalid
- write a case statement
  - when only 1 angle = 90, return :right
  - when all 3 angles < 90, return :acute
  - else :obtuse

=end

def triangle(side1, side2, side3)
  array = [side1, side2, side3]
  return :invalid if array.sum != 180 || array.any?(0)
  
  case
  when array.count(90) == 1 then :right
  when array.all? { |n| n < 90 } then :acute
  else :obtuse
  end
end

p triangle(60, 70, 50) == :acute
p triangle(30, 90, 60) == :right
p triangle(120, 50, 10) == :obtuse
p triangle(0, 90, 90) == :invalid
p triangle(50, 50, 50) == :invalid