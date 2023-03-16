=begin
Write a method that takes a time using this minute-based format 
and returns the time of day in 24 hour format (hh:mm). 
Your method should work with any integer input.

You may not use ruby's Date and Time classes.


input: integer (minutes)
output: string (time)

rules:
- If the number of minutes is positive, the time is after midnight
- If the number of minutes is negative, the time is before midnight.

check if number is greater than 0 or less
if greater
- check if the number is greater than 60, divmod it by 60 to get hours and minutes
  - add the hours to a variable
    - if > 24, minus 24 from hours to get hours
  - add the minutes to another variable 
- if less than 60
  - add number to minutes variable
if less than 0
- mulitply * -1
- repeat steps above


=end
# def hours_mins(time)

def time_of_day(num)
return "00:00" if num == 0
hours = 0
mins = 0
time = ''

  if num > 0
    if num > 60
      hours = num.divmod(60)[0]
      mins = num.divmod(60)[1]
      hours = hours.divmod(24)[1] if hours > 24
    elsif num < 60
      mins = num.divmod(60)[1]
    end
    hours > 9 ? time << "#{hours}" : time << "0#{hours}"
    mins > 9 ? time << ":#{mins}" : time << ":0#{mins}"
    
  elsif num < 0 
    num *= -1
    hours = 23
    
    if num > 60
      hours = num.divmod(60)[0]
      mins = num.divmod(60)[1]
      hours = hours.divmod(24)[1] if hours > 24
      hours = 23 - hours
      mins = 60 - mins
    elsif num < 60
      mins = num.divmod(60)[1]
      mins = 60 - mins
    end
    hours > 9 ? time << "#{hours}" : time << "0#{hours}"
    mins > 9 ? time << ":#{mins}" : time << ":0#{mins}"
    
  end
  
  return time
end

p time_of_day(0) == "00:00"
p time_of_day(-3) == "23:57"
p time_of_day(35) == "00:35"
p time_of_day(-1437) == "00:03"
p time_of_day(3000) == "02:00"
p time_of_day(800) == "13:20"
p time_of_day(-4231) == "01:29"