=begin
Given 2 strings, your job is to find out if there is a substring
that appears in both strings. You will return true if you find a
substring that appears in both strings, or false if you do not.
We only care about substrings that are longer than one letter. 


Problem:
- given 2 strings
- return true if the second string letters all appear in the first string


Input: 2 strings
Output: boolean

Rules:
- if empty string and string with chars, false
- if both empty, false
- lettercase doesn't matter - B = b

Examples/Modeling:

Algorithm:
- given two strings
- if string 1 and 2 is empty, return false
- initialize a new array1 and array2
- find all the substrings of str1 and put into arr1
- find all substrings of str2 and put into arr2 
- iterate over arr1
  - if the sub_str is less than 2, next
  - if greater, see if it's included in arr2
    - if so, return true, false otherwise
  


=end

def get_substrings(str)
  arr = []
  (0...str.size).each do |findex|
    (findex + 1...str.size).each do |sindex|
      arr << str[findex..sindex]
    end
  end
  arr
end
  
def substring_test(str1, str2)
  return false if str1.empty? || str2.empty?
  
  arr1 = get_substrings(str1.downcase)
  arr2 = get_substrings(str2.downcase)
  arr1.each do |sub_str|
    next if sub_str.size < 2
    return true if arr2.include?(sub_str)
  end
  false
end


p substring_test("Something", "Fun") == false
p substring_test("Something", "Home") == true
p substring_test("Something", "") == false
p substring_test("", "Something") == false
p substring_test("BANANA", "Banana") == true
p substring_test("test", "111t") == false
p substring_test("", "") == false
p substring_test("1234567", "541265") == true
p substring_test("supercalifragilisticexpialidocious", "SoundOfItIsAtrociou") == true