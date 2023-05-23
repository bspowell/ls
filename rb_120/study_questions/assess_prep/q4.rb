#4 — What will the last line of code return?

class Student
  def initialize(id, name)
    @id = id
    @name = name
  end
  
  def ==(other)
    self.id == other.id
  end

  private
  
  attr_reader :id, :name
end

rob = Student.new(123, "Rob")
tom = Student.new(456, "Tom")

rob == tom

=begin

We are instantiating two new objects of the class Student and assigning them to the
local variables rob and tom respectively. In their instantiation, we 
pass in two arguments which get assign to their instance variables 
@id and @name. These will be unique states for each instance. 

on Line 21 we are invoking the == method on rob and passing in tom as an
argument. We defined our own == method within the class Student which is
used in this case and the parameter 'other' binds to the object referenced
by tom. Within the method, we are able to invoke the id settre
method on self, however when we invoke the 'id' setter method on 'other'
since id is a private method, we cannot access it. Private methods are
not accessible outisde of the class definition. Since we are invoke id 
on another object of this class, we cannot access it. If this was 
Protected, we then coudl access it. 

This would result in a private method error


=end 