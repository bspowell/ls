class Animal
  @@total_animals = 0

  def initialize
    @@total_animals += 1
  end
end

class Dog < Animal
	@@total_animals = 2

  def total_animals
    @@total_animals
  end
end

spike = Dog.new
puts spike.total_animals 