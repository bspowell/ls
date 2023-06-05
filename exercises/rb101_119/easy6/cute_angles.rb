=begin
Write a method that takes a floating point number
that represents an angle between 0 and 360 degrees and
returns a String that represents that angle in degrees, minutes and seconds. 

You should use a degree symbol (°) to represent degrees,
a single quote (') to represent minutes, 
and a double quote (") to represent seconds

A degree has 60 minutes, while a minute has 60 seconds.

input: float
output: string (angle, minutes, seconds) ex. %(30°00'00")

Rules
- integer value of float = degrees
- minutes = numbers after decimal * 60
- seconds = the result of minutes, numbers after decimal  * 60

D/A
- create an array with:
  - 0 = "%("
  - 1 = degrees
  - 2 = '°'
  - 3 = minutes
  - 4 = "'"
  - 5 = seconds
  - 6 = """
- assign degrees to the integer value of the float passed in
- assign minutes to (float - integer value of float) * 60
- assign seconds to (minutes - integer value of minutes) * 60

FIX QUOTE IN ARRAY. - SINGLE QUOTE IN A STRING?

=end


def dms(float)
  degrees = 0
  minutes = 0
  seconds = 0
  
  degrees = float.to_i
  #array = ["%(", degrees.to_s, "°", "00", "'", "00","\"",")"]
  array = [degrees.to_s, "°", "00", "'", "00","\"",]
  if (float - degrees) > 0
      minutes = (float - degrees) * 60
      array[2] = minutes.to_i.to_s
  end
  if (minutes - minutes.to_i) > 0
    seconds = (minutes - minutes.to_i) * 60
    array[4] = seconds.to_i.to_s
  end
  
  p array.join
  # "30°00'00\""
  # '1'.rjust(2, '0') == "01"
end

# p dms(30) == %(30°00'00")
# p dms(76.73) == %(76°43'48")
p dms(254.6) == %(254°36'00")
p dms(93.034773) == %(93°02'05")
p dms(0) == %(0°00'00")
p dms(360) == %(360°00'00") || dms(360) == %(0°00'00")