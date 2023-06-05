=begin

input: integer
output: boolean

If a single digit(0-9) is lead by any number of 0s, it will flat out remove the leading 0s, 
leaving you with the final digit.
Examples:
0000000 becomes 0
0000005 becomes 5
If multiple digits(0-9) are lead by any number of 0s, it will assume the number is 
Octal(Base 8) and convert it to Decimal(Base 10).
Examples:
00050 becomes 40
0005000 becomes 2560
000000005000 becomes 2560

=end

def palindromic_number?(int)
 p int.to_s
 int.to_s == int.to_s.reverse
 
end


p palindromic_number?(003454300) == true
p palindromic_number?(123210) == false
p palindromic_number?(22) == true
p palindromic_number?(5) == true