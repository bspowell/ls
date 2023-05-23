class Person           # initialized at the class level

  def self.starting
    @@total_people = 0
  end

  def self.total_people
    @@total_people             # accessible from class method
  end

  def initialize
    @@total_people += 1         # reassigned from instance method
  end

  # def total_people
  #   @@total_people              # accessible from instance method
  # end
end
Person.starting
puts Person.total_people             # => 0
Person.new
Person.new
puts Person.total_people             # => 2

bob = Person.new
puts bob.total_people                # => 3

# joe = Person.new
# joe.total_people                # => 4

# Person.total_people             # => 4