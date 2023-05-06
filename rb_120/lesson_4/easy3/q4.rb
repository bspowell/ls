class Cat
  def initialize(type)
    @type = type
  end

  def to_s
    "I am a #{@type} cat"
  end
end

=begin
How could we go about changing the to_s output on this method to look like this: 
I am a tabby cat? (this is assuming that "tabby" is the type we passed in 
during initialization).

We would need to add a to_s method and then have a string with string interpolation
and an instance variable. or add a getter method with attr_reader or creating the long
form. 

def to_s
  "I am a #{@type} cat"
end

=end

newcat = Cat.new("tabby")

puts newcat