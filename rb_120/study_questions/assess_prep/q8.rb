class Dog
  attr_accessor :name

  def good
    self.name + " is a good dog"
  end
end

bandit = Dog.new
bandit.name = "Bandit"
p bandit.good


=begin

Since we are within an instance method, self refers to the
calling instance, in this case bandit which refers to an instance of Dog.

This will output "Bandit is a good dog"

  

=end 
