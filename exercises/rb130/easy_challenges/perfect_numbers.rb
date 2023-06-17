=begin
  
adundant
perfect 
deficient
- depending on the sum and it's postive divisors
- numbers that can be evenly dividd into the target number with no remainder (exluding the number itself)

Perfect numbers have an Aliquot sum that is equal to the original number.
ex. 6 - (divisors 1,2,3. 1 + 2 + 3 = 6)
Abundant numbers have an Aliquot sum that is greater than the original number.
ex. 24 - (divisors 1, 2, 3, 4, 6, 8, and 12. 1 + 2 + 3 + 4 + 6 + 8 + 12 = 36)
Deficient numbers have an Aliquot sum that is less than the original number.
ex. 15 - (divisors 1,3,5 = 9)

Prime numbers 7, 13, etc. are always deficient since their only divisor is 1.

=end 


class PerfectNumber

  def self.classify(num)
    raises StandardError if num < 0
    divisors = 0
    (1...num).each do |number|
      divisors += number if num % number == 0
    end
    divisors

    case 
    when divisors > num then return 'abundant'
    when divisors < num then return 'deficient'
    when divisors == num then return 'perfect' 
    end
  end

end

puts PerfectNumber.classify(6)

