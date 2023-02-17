
=begin
define method that takes 1 positive integer
display right triangle with all sides have n stars
the hypotenuse should have one at the end of the lower left triangle
and another upper right
triangle(5)

    *
   **
  ***
 ****
*****

input: postitve int
output: string of *

take postive_int -1 and times that by " ", then print first star
repeat with interator decreasing postitive int by 1 and increase print by 1

part 2: try modifiying it so it prints upside down.

=end

#part 1
# def triangle(pos_int)
#   stars = 1
#   loop do
#     pos_int -= 1
#     puts (" " * pos_int) + ("*" * stars)
#     stars += 1
#     break if pos_int == 0
#   end
# end

#part2
# def triangle(pos_int)
#   puts ("*" * pos_int)
#   spaces = 1
#   loop do
#     pos_int -= 1
#     puts (" " * spaces) + ("*" * pos_int)
#     spaces += 1
#     break if pos_int == 0
#   end
# end

#part 3
require "pry"
def triangle(int, position)
  case position
  when 'top left'
    puts string = "*" * int
    int.times { puts "#{string.chop!}" }
  when 'top right'
    count = 0
    puts string = "*" * int
    int.times { puts "#{string.chop!.rjust(string.size + (count += 1))}" }
  when 'bottom left'
    string = ''
    int.times { puts (string << "*").ljust(int - string.size) }
  when 'bottom right'
    string = ''
    int.times { puts (string << "*").rjust(string.size + (int -= 1)) }
  end
end
  
  
# def triangle(num)
#   string = ''
#   num.times {puts "#{(string << '*').rjust(num)}"}
# end


triangle(5,'top left')
triangle(5,'top right')
triangle(5,'bottom left')
triangle(5,'bottom right')