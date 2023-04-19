=begin

Problem:
- given a string, rotate the characters by n times


Input: string
Output: string rotated

Rules:

Examples/Modeling:

breakdown:
- use the integer to times the rotation method
- rotate the string

Algorithm:
- given a string and integer
- run a rotation of the string n times


=end

def rotate_string(string)
  string[1..-1] + string[0]
end

def rotate(string, num)
  num.times { string = rotate_string(string) }
  string
end

p rotate("string", 4) #== "ngstri"
p rotate("room", 7) #== "mroo"