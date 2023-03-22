=begin

Write a method that determines the mean (average) 
of the three scores passed to it, 
and returns the letter value associated with that grade.

input: 3 integers
output: string (letter value of grade)

/* given 3 ints */
- assign the average of 3 in a variable
- check with a case statment what grade to reassign the variable to

=end

def get_grade(g1, g2, g3)
  grade = (g1 + g2 + g3)/3
  case 
  when grade >= 90 
    grade = 'A'
  when 90 > grade && grade >= 80
    grade = 'B'
  when 80 > grade && grade >= 70 
    grade = 'C'
  when 70 > grade && grade >= 60
    grade = 'D'
  else
    grade = 'F'
  end
end

p get_grade(95, 90, 93) == "A"
p get_grade(50, 50, 95) == "D"
