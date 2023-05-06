class Greeting
  def greet(message)
    puts message
  end
end

class Hello < Greeting
  def hi
    greet("Hello")
  end
end

class Goodbye < Greeting
  def bye
    greet("Goodbye")
  end
end

#what happens with each case:
# hello = Hello.new
# hello.hi

=begin
this will output "Hello".
We instantiate a new object from class Hello and assing it to hello.
Then we call the #hi method on hello, which runs greet("Hello"), which
then looks up in it's super class for greet method and outputs the message.
=end 

#case 2
# hello = Hello.new
# hello.bye

=begin
We will get an error. nomethoderror since the #bye method is not in the class or 
lookup path.
=end

#case 3
# hello = Hello.new
# hello.greet

=begin
This will return an ArgumentError since it's not passing the right number of arguments to 
the greet method in class Greeting.

When the object referenced by hello invokes the greet method, it looks first in the Hello
class, then in Greeting where it finds the greet method. However, that method takes 1 argument
and we don't pass it an argument. 
=end 

#case 4: 
# hello = Hello.new
# hello.greet("Goodbye")

=begin
This will now run and output "Goodbye"
=end

#case 5:
Hello.hi

#since there is no class method for #hi, this will result in a NoMethodError
