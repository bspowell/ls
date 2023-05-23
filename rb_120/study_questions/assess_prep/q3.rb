
module Greet
  def greet(message)
    puts message
  end
end

class Teacher
  include Greet
end

class Student
  include Greet
end

tom = Teacher.new
rob = Student.new

tom.greet "Bonjour!"
rob.greet "Hello!"

=begin
#3 — What concept does the following code aim to demonstrate?

This code is an example of polymorhism through interface inheritance.
This is where modules are mixed in to a class to provide shared behvaiour 
across different classes. 
This is polymorphism becuase objects of different types can respond to the 
same method invocation "greet" and it is done with intension. 
  
=end 