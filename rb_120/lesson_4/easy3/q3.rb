class AngryCat
  def initialize(age, name)
    @age  = age
    @name = name
  end

  def age
    puts @age
  end

  def name
    puts @name
  end

  def hiss
    puts "Hisssss!!!"
  end
end

=begin
When objects are created they are a separate realization of a particular class.

Given the class above, how do we create two different instances of 
this class with separate names and ages?

You can do this by creating new instances using the new method on the class.
This will give each instance different states. By default, Ruby will call the 
initialize method on object creation. 

You can confrim that each cats have different by asking for their age and name

=end

newcat = AngryCat.new(3, "kitty")
secondcat = AngryCat.new(4, "bobby")

newcat.name
secondcat.name
newcat.age
secondcat.age