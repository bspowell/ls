class Person
  attr_accessor :first_name, :last_name
  
  def initialize(name)
    @first_name = name
    @last_name = ""
  end
  
  def name
    if last_name.size > 1
      "#{first_name} #{last_name}"
    else
      first_name
    end
  end
end


bob = Person.new('Robert')
p bob.name                  # => 'Robert'
p bob.first_name            # => 'Robert'
p bob.last_name             # => ''
p bob.last_name = 'Smith'
p bob.name                  # => 'Robert Smith'