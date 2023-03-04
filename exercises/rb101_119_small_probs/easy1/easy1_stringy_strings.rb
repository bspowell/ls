=begin

method, takes 1 postive int agrument
returns string of alternating 1s and 0s
always starts with 1
length of string = integer value

=end

def stringy(pos_int)
  new_str = ''
  pos_int.times do |index|
    index.even? ? new_str << '1' : new_str << '0'
  end
  new_str
end


puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'