=begin
P: 
Given a string s,
find a minimum substring t that's in sequence
and maxiumum number k 
the entire string s is equal to t repeated k times.
Input string is only lowercase letters
return an array [t, k]

Example #1:
for string s = "ababab"
the answer is = ["ab", 3]

Example #2:
for string s = "abcde"
because for this string "abcde" the minimum substring t, 
such that s is t repeated k times, is itself.


INPUT: string 
OUTPUT: array [substring sequence minimum, length]

IR:
ER:

MODELING:
could create a data structure to compare against (a..z).to_a
create an empty array
create empty string
iterate over each character
- push first character into new_str 
- check to see if next character is the next in succession
- if it is, go to next iteration
- if it isn't, push new_str into array, set new_str to empty
- go to next char
iterate over array and use map to covert all elements to string length
find minimum number and index
select that word and number from the array and push into returning array


ALGO:
/* given a string */
- iterate over the 

=end


def f(string)
  new_arr = []
  str = ''
  string.chars.each_with_index do |char, ind|
    str << char
    if char.succ == string[ind+1]
      next
    else
      new_arr << str if str.size != 1
      str = ''
    end
  end
  count = new_arr.size
  new_arr = [new_arr.min { |x, y| x.size <=> y.size }]
  new_arr << count
  p new_arr
end



p f("ababab") == ["ab", 3]
p f("abcde") == ["abcde", 1]
p f("abceeeabc") == ["abceeeabc", 1]
