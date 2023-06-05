=begin
You will be given a number 
and you will need to return it as a string in expanded form. 

For example:
expanded_form(12); # Should return '10 + 2'
expanded_form(42); # Should return '40 + 2'
expanded_form(70304); # Should return '70000 + 300 + 4'

Note: All numbers will be whole numbers greater than 0.


P: 
given a number
return a string in expanded form.
expanded form is broken up into ones, tens, hundreds and thousands place
expanded_form(12); # Should return '10 + 2'

IMPLICIT:
- if first digits place is a 0, then it won't be added to the string

EXPLICIT:

INPUT: integer
OUTPUT: string

MODELING: 

Example: 
12 
array = 12.to_s.split = ["1","2"]
string = ''
array.reverse.each_with_index do |num, ind|
  num = "#{num} + ('0'*ind)"
  string << num + " + "
end
string.reverse


ALGO:
/* given an integer */
- make into an array of strings
- reverse it so as we progress, we increase the index and number of zeros
- iterate over array to see if its a whole number or 0 
  - then add 0s for remaining string size (string size - index)
Push that into an empty string
return the string

=end

# solution 1
# def expanded_form(num)
#   array = num.digits.map!(&:to_s)
#   string = ''
  
#   array.each_with_index do |num, ind|
#     next if num == '0'
#     num = num + ('0'*ind)
#     string.prepend(num)
#     string.prepend(" + ") if ind != array.size - 1
#   end
#   p string
# end

#Solution 2
def expanded_form(num)
  array = num.digits.map!(&:to_s)
  new_arr = []
  
  array.each_with_index do |num, ind|
    next if num == '0'
    new_arr.prepend(num + ('0'*ind))
  end
  new_arr.join(' + ')
end

p expanded_form(12) == '10 + 2'
p expanded_form(42) == '40 + 2'
p expanded_form(70304) == '70000 + 300 + 4'
