=begin

Problem:
- given a string and a number, rotate ever n elements in the array

- p2, rotate the array n times

Input: string
Output: new string rotated

Rules:
- if there are letters the end that don't add to 4 ,dont rotate

Examples/Modeling:

Breakdown:
- over a range to the size of string, step every n elements
- slice from current index to index + number - 1,  - if size does not equal number, then stop.
- within that slice, rotate letters by 1
- return string

Algorithm:
- given a string
- from 0 to size of string-1, step ever n elements
  - new var = slice from current index to index + number-1 
    - if size does not equal number, then stop
    - return new var + (index + number-1 to end)
  - return new var

=end

def rotate(string)
  string[1..-1] + string[0]
end 

def rotation(string, num)
  (0...string.size).step(num) do |ind|
    return string if string[ind...(ind + num)].size != num
    string[ind...(ind + num)] = rotate(string[ind...(ind + num)])
  end
  string
end


p rotation("string", 3) == "trsngi"
p rotation("livingroom", 4) == "ivilgronom"