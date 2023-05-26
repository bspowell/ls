#describe what the code below outputs and why from Joseph Ochoa

module Attackable
  def attack
    "attacks!"
  end
end

class Characters
  attr_accessor :name, :characters 
  
  def initialize(name) 
    #
    self.name 
    @characters = [] 
  end
  
  def display
    name
  end
  
  protected 
  attr_reader :name
  attr_writer :name
end

class Monster < Characters
  include Attackable
  
  def initialize(name)
    super
  end
end

class Barbarian < Characters
  def ==(other)
    if(super.self == super.self) # 
      super.self == super.self
    end
  end
end

conan = Barbarian.new('barb') 
rob = Monster.new('monst')
conan.characters << rob #returns array with object referenced by rob
p conan.display # returns nil 

=begin
On line 43 we are initializing a new local variable conan to the return 
value of instantiating a new Barbarian object and passing 'barb' as an argument. 

Barbarian inhertis from characters, so when we instantiate an object we are 
calling the initialize method within Characters class. 

There we are binding the name 'barb' to name pararmeter, however within the 
initialize method we don't od anything with it. Since we invoke the name getter method
with self.name. Name is equal to nil. 

same happens for rob.

We then invoke characters on the object referenced by conan, which returns 
an array, then we inoke the shift method and pass in the object referenced by
rob. 

we then invoke the p method and pass in the return vlaue of display being called
on conan, which returns nil.

=end
