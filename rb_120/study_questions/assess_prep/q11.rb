class Cat
  attr_accessor :name

  def set_name
    name = "Cheetos"
  end
end

cat = Cat.new
cat.set_name

=begin
What would cat.name return after the last line of code is executed?

When we instantiate a new Cat object on line 9, we don't initialize any
instance variables. Similiar on line 10, we invoke the set_name method
however, within the method we initialize a local variable to the string
"Cheetos". This is not an instance variable. 

so when we call cat.name, we would get nil. Since we have the setter method
access with attr_acessor :name, however it's hasn't been initialized. 

=end