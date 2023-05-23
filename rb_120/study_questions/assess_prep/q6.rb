class Person
  attr_reader :name

  def initialize(name)
    @name = name
  end

  def greet
     "Hello! they call me #{name}"
  end
end

class Puppet < Person
  def initialize(name)
    super
  end

  def greet(message)
    puts super + message
  end
end

puppet = Puppet.new("Cookie Monster")
puppet.greet(" and I love cookies!")

=begin
#6 — Will the following code execute? What will be the output?

Line 23 will execute and we will instantiate a new Puppet object and 
assign it to the local variable puppet.

The last line will throw an error since when we invoke the greet method
with the class Puppet, we invoke super which calls the superclass' version
of the greet method and passes 1 argument 'message'. Since the greet method
within the superclass Person doesn't take an arguments, it will result in 
a ArgumentError. 


=end