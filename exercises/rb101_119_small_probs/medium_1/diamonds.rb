=begin
Write a method that displays a 4-pointed diamond in an n x n grid, 
where n is an odd integer that is supplied as an argument to the method. 

You may assume that the argument will always be an odd integer.

input: integer (odd)
output: print 4 pointed diamond

Explicit rules:
- integer is always odd
- print on a n x n grid

Examples
diamond(1)

*
diamond(3)

 *
***
 *
 diamond(9)

    *
   ***
  *****
 *******
*********
 *******
  *****
   ***
    *
    
D/A 
/* given an odd integer */
- print a star every odd number till you hit the integer size
  - then same in reverse
- center every star within spacing of integer n 

=end

# def print_stars(integer, direction = 'up')
#   if direction == 'up'
#     1.upto(integer) do |ind|
#       puts ("*" * ind).center(integer) if ind.odd?
#     end
#   else
#     (integer - 1).downto(1) do |ind|
#       puts ("*" * ind).center(integer) if ind.odd?
#     end
#   end
# end

# def diamond(odd_int)
#   print_stars(odd_int)
#   print_stars(odd_int, 'reverse')
# end


# further exploration - outline of a diamond

require 'pry'

def print_stars(integer, direction = 'up')
  if direction != 'reverse'
    1.upto(integer) do |ind|
      stars = ("*" * ind).center(integer)
      puts stars if ind.odd?
    end
  else
    (integer - 1).downto(1) do |ind|
      stars = ("*" * ind).center(integer)
      puts stars if ind.odd?
    end
  end
end

def diamond(odd_int)
  print_stars(odd_int)
  print_stars(odd_int, 'reverse')
end





diamond(1)
diamond(5)
diamond(9)