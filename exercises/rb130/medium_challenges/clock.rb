=begin
 
P:
create a clock independate of date.

You should be able to :
- add minites from the time represented by a given clock
- subtract minutes
- don't mutate Clock objects when doing this. - create a new Clock Object
- Two clock objects that represent the same time should be equal
- you may not use built-in date or time functionality 


at method 
- takes 2 arguments - hours and mins
- creates a new clcok object

+ method
takes new minutes and adds to old minutes
if new mins is greater than 59, then +1 hour and minus 60 mins
call at method to create a new clock to return

=end


class Clock
  attr_reader :hour, :min

  def initialize(hour, min)
    @hour = hour 
    @min = min
  end

  def self.at(current_hour=0, current_min=0)
    Clock.new(current_hour, current_min)
  end 

  def +(number)
    add_hours, add_mins = number.divmod(60)
    @hour += add_hours
    @min += add_mins
    if @min > 59
      @hour == 23 ? @hour = 0 : @hour += 1
      @min -= 60
    end
    if @hour > 23
      @hour -= 24 until @hour < 24
    end
    Clock.at(@hour, @min)
  end

  def -(number)
    min_hours, min_mins = number.divmod(60)
    @hour -= min_hours
    @min -= min_mins
    if @min < 0
      @hour == 0 ? @hour = 23 : @hour -= 1
      @min += 60
    end
    if @hour < 0
      @hour += 24 until @hour > 0
    end
    Clock.at(@hour, @min)
  end

  def ==(other)
    @hour == other.hour && @min == other.min
  end

  def to_s
    print_clock = ''
    case @hour
    when 0..9 then print_clock << '0' + @hour.to_s
    when 10..23 then print_clock << @hour.to_s
    end
    print_clock << ':'
    case @min
    when 0..9 then print_clock << '0' + @min.to_s
    when 10..59 then print_clock << @min.to_s
    end
    print_clock
  end

end 

c = Clock.at(0, 30) - 60
puts c