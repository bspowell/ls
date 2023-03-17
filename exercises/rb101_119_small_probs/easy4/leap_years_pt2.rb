=begin

- After year 1752, use regular leap year format
- Before year 1752, every 4 years is leap year

=end


def leap_year?(year)
  if year >= 1752
    if year % 400 == 0
      true
    elsif year % 100 == 0
      false
    elsif year % 4 == 0 
      true
    else
      false
    end
  else
    year % 4 == 0 ? true : false
  end
end

p leap_year?(2016) == true
p leap_year?(2015) == false
p leap_year?(2100) == false
p leap_year?(2400) == true
p leap_year?(240000) == true
p leap_year?(240001) == false
p leap_year?(2000) == true
p leap_year?(1900) == false
p leap_year?(1752) == true
p leap_year?(1700) == true
p leap_year?(1) == false
p leap_year?(100) == true
p leap_year?(400) == true