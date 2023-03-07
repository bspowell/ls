=begin
Write a method that takes a year as input and returns the century. 
The return value should be a string that begins with the century number, 
and ends with st, nd, rd, or th as appropriate for that number.

New centuries begin in years that end with 01. So, the years 1901-2000 comprise the 20th century.

input: integer (year)
output: string (century)

rules:

Algorithm:
If the year modulo by 100 is 0, then use number/100 as century
If the year modulo by 100 is equal to year, then century equals 1 
Otherwise, divide number by 100 then add 1 to it

#problem 2 - to string with place
take number and write case statement for if last digit is within certain numbers
- 1 - st
- 2 - nd
- 3 - rd
- 4,5,6,7,8,9 - th
- for 11, 12, 13, add another case
convert number to string and add appropriate ending

return string

=end

def century(year)
  if year % 100 == 0
    century = year / 100
  elsif year % 100 == year
    century = 1
  else
    century = (year / 100) + 1
  end

  case century.digits.first(2).join
  when "11", "21", "31"
    return century.to_s + 'th'
  end 
  
  case century.digits.first
  when 0,4,5,6,7,8,9
    century.to_s + 'th'
  when 1
    century.to_s + 'st'
  when 2
    century.to_s + 'nd'
  when 3
    century.to_s + 'rd'
  end
end


p century(2000) == '20th'
p century(2001) == '21st'
p century(1965) == '20th'
p century(256) == '3rd'
p century(5) == '1st'
p century(10103) == '102nd'
p century(1052) == '11th'
p century(1127) == '12th'
p century(11201) == '113th'