=begin
method that takes two arguments - postive int and boolean
- if boolean true, bonus = half salary
- if boolean false, bonus = 0
- returns bonus for given salary

=end 

def calculate_bonus(salary, bonus)
  bonus ? salary / 2 : 0
end
  
puts calculate_bonus(2800, true) == 1400
puts calculate_bonus(1000, false) == 0
puts calculate_bonus(50000, true) == 25000