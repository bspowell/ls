=begin
Write a method that takes an array of strings, 
and returns an array of the same string values, 
except with the vowels (a, e, i, o, u) removed.

input: array of strings
output: array of strings (vowels removed)

implicit rules:
- keep same formating as input
- if whole string consists of vowels, return empty string
- return array of same size

D/A
- take the given array an iterate through it using map (to return an array of same size)
  - for each string element, remove vowels with delete method
  


=end

VOWELS = 'aeiouAEIOU'

def remove_vowels(array)
  array.map! do |string|
    string.delete(VOWELS)
  end
end


p remove_vowels(%w(abcdefghijklmnopqrstuvwxyz)) == %w(bcdfghjklmnpqrstvwxyz)
p remove_vowels(%w(green YELLOW black white)) == %w(grn YLLW blck wht)
p remove_vowels(%w(ABC AEIOU XYZ)) == ['BC', '', 'XYZ']