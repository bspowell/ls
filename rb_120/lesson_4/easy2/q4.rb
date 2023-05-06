class BeesWax
  def initialize(type)
    @type = type
  end

  def type
    @type
  end

  def type=(t)
    @type = t
  end

  def describe_type
    puts "I am a #{@type} of Bees Wax"
  end
end

=begin

What could you add to this class to simplify it and remove two methods from 
the class definition while still maintaining the same functionality?

you could add:
attr_accessor :type
This gets ride of both the getter and setter long form methods.

Within the describe_type we can also get rid of @. As it's not needed since
we have a getter method for type.

=end