
=begin
 Octal Base 8 to Decimal base 10 system
 where the rightmost digit is multiplied by 10^0
 then each one after is multiplied by 10^1,2,3,4 etc 
 those numbers are added together and then that's Octal number of a number 

 test cases
 233 #decimal
= 2*10^2 + 2*10^1 + 2*10^0
= 155

130 #octal 
= 1*8^2 + 3*8^1 + 0*8^0
= 64 + 24
= 88
=end


class Octal 

  def initialize(string)
    @octal = string
  end

  def to_decimal
    return 0 if @octal.match(/([a-z]|[8-9])/)
    decimal = @octal.chars.reverse
    total = 0
    decimal.each_with_index do |number, index|
      total += (number.to_i * (8 ** index))
    end
    total
  end

end

new_oct = Octal.new('130')
puts new_oct.to_decimal
