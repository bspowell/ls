arr = [1, 2, 3, 4, 5]
arr.take(2)

=begin
How does take work? Is it destructive? How can we find out?

Returns a new Array containing the first n elements of self, 
where n is a non-negative Integer; does not modify self.

For our example, we invoke take method on local variable arr. The
object reference arr is the array we initalized on line 1. Since 
the first non-negative integer is 1, and we passed 2 as the argument
to #take method. We will retrun a new array [1,2]

This is non destructive.


=end