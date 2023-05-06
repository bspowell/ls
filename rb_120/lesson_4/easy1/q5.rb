class Fruit
  def initialize(name)
    name = name
  end
end

class Pizza
  def initialize(name)
    @name = name
  end
end

=begin

The Pizza class would create an instance variable @name when an object
is instantiated from it's class.

You cna look at the class to see if an object has any instance variables
or you can call #instance_variables on the object that was instantiated. 
=end