require 'pry'

# Roman numerals ... are written by expressing each digit separately starting with 
# the left most digit and skipping any digit with a value of zero.

# I, V, X, L, C, D, M. 

#PEDAC
# I stands for 1
# V stands for 5
# X stands for 10
# L stands for 50
# C stands for 100
# D stands for 500
# M stands for 1,000
# We don't have to worry about numbers higher than 3,000.
# If it's 1 minus a character, you write it before
# If it's 1 plus a character, you write it after 

# Test cases

# 1990 is MCMXC:
# 1000=M
# 900=CM
# 90=XC

# 2008 is written as MMVIII:
# 2000=MM
# 8=VIII

# 454
# CDLIV
# 654
# DCLIV
# 754
# DCCLIV
# 854
# DCCCLIV
# 954
# CMLIV

class RomanNumeral

  ROMAN_NUMERALS = {
    "M" => 1000,
    "CM" => 900,
    "D" => 500,
    "CD" => 400,
    "C" => 100,
    "XC" => 90,
    "L" => 50,
    "XL" => 40,
    "X" => 10,
    "IX" => 9,
    "V" => 5,
    "IV" => 4,
    "I" => 1
  }

  def initialize(num)
    @number = num
  end

  def to_roman
    string = ''
    num_arr = @number.digits.reverse

    num_arr.each_with_index.map do |num, index|
      num * 10**((num_arr.size - 1) - index)
    end
    binding.pry
    num_arr.each do |number|
      ROMAN_NUMERALS.values.each do |value|
        binding.pry
        next if value > number
        total = number
        loop until total < value
          binding.pry
          puts "total is: #{total}, value is #{value}"
          string << ROMAN_NUMERALS.key(value)
          total - value
        end
    end

  end
end

obj = RomanNumeral.new(354)
puts obj.to_roman