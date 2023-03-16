=begin

Write two methods that each take a time of day in 24 hour format,
and return the number of minutes before and after midnight, respectively. 
Both methods should return a value in the range 0..1439.


input: string (time of day, 24 hour)
output: integer (0...1439)

rules:
- can't use Date and Time methods

before midnight method
- take hours and minus them from 24
- take minutes minus them from 60
- times hours left by 60 and add the minutes

after midnight
- take hours and times by 60 minutes
- add minutes

=end
require 'pry'


MINUTES_PER_HOUR = 60
HOURS_PER_DAY = 24
MINUTES_PER_DAY = HOURS_PER_DAY * MINUTES_PER_HOUR

def before_midnight(time)
  hours = time[0..1].to_i
  minutes = time[3..-1].to_i
  
  return 0 if hours == 0 && minutes == 0
  
  new_hours = (HOURS_PER_DAY - hours) - 1
  new_mins = MINUTES_PER_HOUR - minutes
  total = (new_hours * MINUTES_PER_HOUR) + new_mins
end

def after_midnight(time)
  hours = time[0..1].to_i
  minutes = time[3..-1].to_i
  
  return 0 if (hours == 0 && minutes == 0) || hours == 24
  
  total = (hours * MINUTES_PER_HOUR) + minutes
end



# after_midnight('00:00') == 0
# before_midnight('00:00') == 0
p after_midnight('12:34') == 754
# before_midnight('12:34') == 686
p after_midnight('24:00') == 0
# before_midnight('24:00') == 0