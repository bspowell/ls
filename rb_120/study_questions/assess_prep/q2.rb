=begin
Define a class of your choice with the following:

Constructor method that initializes 2 instance variables.
Instance method that outputs an interpolated string of those variables.
Getter methods for both (you can use the shorthand notation if you want).
Prevent instances from accessing these methods outside of the class.
Finally, explain what concept(s) you’ve just demonstrated with your code.

=end

class Animal

  def initialize(name, color)
    @name = name 
    @color = color
  end 

  def what_am_i
    puts "My name is #{name} and I'm #{color}"
  end

  private

  attr_reader :name, :color

end

terry = Animal.new("terry", "brown")
terry.what_am_i

=begin

The class Animal encapsulates a model of attributes and behaviours 
in which objects can be created. Each object will create it's own 
copies of instanace varibales which allows for different object states.
The state is encapsulated within each object (instance).
This code demonstrates encapsulation by using Method Access Control in Ruby.
We use the method private to ensure that other parts of the code cannot
access the objects instantiated from class Animal's instance variables 
@name and @color without obvious intent.

This is form of data protection and helps 
=end 