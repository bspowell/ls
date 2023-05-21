class Person
  attr_accessor :last_name, :first_name

  def initialize(n)
    full_name(n)
  end

  def name
    "#{first_name} #{last_name}"
  end

  def name=(n)
    full_name(n)
  end

  def full_name(n)
    whole_name = n.split(" ")
    self.first_name = whole_name[0]
    self.last_name = whole_name.size > 1 ? whole_name[1] : ""
  end

end


bob = Person.new('Robert Smith')

puts "The person's name is: #{bob}"
