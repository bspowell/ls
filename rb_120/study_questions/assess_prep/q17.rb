class Foo
  def self.method_a
    "Justice" + all     #we are essentially calling self.all 
  end

  def self.method_b(other)
    "Justice" + other.exclamate   #this calls Foo.excalmate - essentially self.
  end

  private

  def self.all         #This will work since private isn't relevant for class methods
    " for all"
  end

  def self.exclamate 
    all + "!!!"
  end
end

foo = Foo.new
puts Foo.all
# puts Foo.method_a # 
# puts Foo.method_b(Foo) #
