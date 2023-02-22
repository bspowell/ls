=begin

print all odd numbers from 1 to 99 inclusive
each number on a separate line

use range 1..99
use puts


=end 

#first attempt
100.times { |index| puts index if index.even? } 
# doesn't work for even, only odd.

#second attempt
1.upto(99) { |num| puts num if num.even? }

#third attempt
(1..99).to_a.select { |num| puts num if num % 2 == 0 } 