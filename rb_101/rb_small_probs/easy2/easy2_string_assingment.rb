name = 'Bob'
save_name = name
name.upcase!
puts name, save_name

=begin

On line 1, we initate the local variable name, and assign it to the string object 'Bob'
We then initiatve local variable save_name and assign it the same value as the variable name - which is 'Bob'
After, we invoke the .upcase! method on the name variable. This method mutates the caller. This changes a string 
object to uppercase. Variable name and save_name are pointing to has now changed to 'BOB'. 
Lastly, we invoke the puts method and pass the name and save_name variables as arguments.
Resulting in the output: 
BOB
BOB 
=> returns nil.
This demonstrates pass by reference as the object was mutated by the caller.

=end