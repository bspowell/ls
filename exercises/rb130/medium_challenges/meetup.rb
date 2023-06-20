=begin
 
P:
Construct objects that represent a meetup date
each object takes month (1-12) and a year (2021)
The object, should determine the exact date of the meeting in the month and year

example:
- if you ask for 2nd Wednesday or MAy 2021
- the object should determine that the meetup will occur on 12th of May, 2021

Descriptors that can be given: 'first', 'second', 'third', 'fourth', 'fifth', 'last', and 'teenth'
Case is not important - first and fIrSt are equivalent

teenth - there  are 7 days that end in '-teenth'.
- it's guaranteed that one day each week will have  a teenth of that day 
- That is, every month has exactly one "teenth" Monday, one "teenth" Tuesday, etc. 
between 13-19th

fifth - The fifth day of the month may not happen every month, 
but some meetup groups like that irregularity.

The days of the week are given by the strings 'Monday', 'Tuesday', 'Wednesday', 'Thursday', 
'Friday', 'Saturday', and 'Sunday'. Again, the case of the strings is not important.

# Define a class Meetup with a constructor taking a month and a year
# and a method day(weekday, schedule).
# where weekday is one of: monday, tuesday, wednesday, etc.
# and schedule is first, second, third, fourth, fifth, last, or teenth.

Date.civil(2013, 5, 4) - Year month day = May 4th, 2013 = "2013-05-04"


algo 

for day method 
  - given day of the week, and schedule
  - turn schedule into numerics 




=end

require 'date'


class Meetup

  def initialize(year, month)
    @year = year
    @month = month
  end

  def day(weekday, schedule)
    if schedule == 'teenth'
      from = Date.new(@year, @month, 13)
      to = Date.new(@year, @month, 19)
      (from..to).each do |date| 
        return date if check_weekday(date, weekday)
      end
    else
      from = Date.new(@year, @month, 1)
      to = Date.new(@year, @month, -1)
      day_array = []
      (from..to).each do |date| 
        day_array << date if check_weekday(date, weekday)
      end
      day = schedule_to_day(schedule)
      day_array[day]
    end
  end

  private

  def check_weekday(date, day)
    case day.downcase
    when 'monday' then date.monday?
    when 'tuesday' then date.tuesday?
    when 'wednesday' then date.wednesday?
    when 'thursday' then date.thursday?
    when 'friday' then date.friday?
    when 'saturday' then date.saturday?
    when 'sunday' then date.sunday?
    end
  end

  def schedule_to_day(schedule)
    case schedule.downcase
    when 'first' then 0
    when 'second' then 1
    when 'third' then 2
    when 'fourth' then 3
    when 'fifth' then 4
    when 'last' then -1
    end
  end

end

meetup = Meetup.new(2013, 4)
p meetup.day('monday', 'FIRST')