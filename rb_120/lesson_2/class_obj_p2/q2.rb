class Person
  attr_accessor :last_name, :first_name

  def initialize(n)
    full_name(n)
  end

  def name
    "#{first_name} #{last_name}"
  end

  def full_name(n)
    whole_name = n.split(" ")
    self.first_name = whole_name[0]
    self.last_name = whole_name[1]
  end

end


bob = Person.new('Robert')
puts bob.name                  # => 'Robert'
puts bob.first_name            # => 'Robert'
puts bob.last_name             # => ''
bob.last_name = 'Smith'
puts bob.name                  # => 'Robert Smith'