=begin

Write a method that takes a string as an argument
and returns a new string 
which every uppercase letter is replaced by its lowercase version, 
and every lowercase letter by its uppercase version. 
All other characters should be unchanged.

input: stirng
output: new string

D/A
Given a string
- turn string into array
- iterate over the array to transform it (map)
- for each character, if it contains a-z, then upcase
- if it contains A-Z, downcase

=end

def swapcase(string)
  new_string = string.chars.map do |char|
    if char == char.upcase
      char.downcase
    else 
      char.upcase
    end
  end
  new_string.join
end


p swapcase('CamelCase') == 'cAMELcASE'
p swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'