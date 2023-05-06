class Cat
  @@cats_count = 0

  def initialize(type)
    @type = type
    @age  = 0
    @@cats_count += 1
  end

  def self.cats_count
    @@cats_count
  end
end

meow = Cat.new("brown")
meowmeow = Cat.new("black")

puts Cat.cats_count

=begin
Explain what the @@cats_count variable does and how it works. 
What code would you need to write to test your theory?

The @@cats_count class variable increments by 1 every time a new instance
of class Cat is created. This is because the initialize method is run everytime we
create a new object. You can test this theory by instantiated several new
Cat objects and then calling the class method cats_count which will return 
the value referenced by @@cats_count

meow = Cat.new("brown")
meowmeow = Cat.new("black")

puts Cat.cats_count
 #=> 2 

=end