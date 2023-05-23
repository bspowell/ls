class Person
  attr_reader :friends

  def initialize
    @friends = []
  end

  def <<(new_friend)
    @friends.push(new_friend)
  end

  def []=(index, value)
    friends[index] = value
  end

  def [](index)
    friends[index]
  end

end

class Friend
  attr_reader :name

  def initialize(name)
    @name = name
  end

  def to_s
    name
  end

end

tom = Person.new
john = Friend.new('John')
amber = Friend.new('Amber')

tom << amber
tom[1] = john
puts tom[0]      # => Amber
puts tom.friends # => ["Amber", "John"]

=begin
#14 — Write 3 methods inside the Person class and one method
in the Friend class that would return the outputs shown on lines 23 and 24.



  
=end 
