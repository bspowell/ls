['ant', 'bear', 'caterpillar'].pop.size

=begin 
What is the return value of the following statement? Why?

when we invoke the pop method on the array object, we are destructively
removing the last element in the array. In this case 'caterprillar'.
We then invoke #size method on the return value of the #pop method being 
called on the array.

We then get the return value of 11. 

=end