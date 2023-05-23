class Bird
  def fly
    p "#{self.class} is flying!"
  end
end

class Pigeon < Bird; end
class Duck < Bird; end

birds = [Bird.new, Pigeon.new, Duck.new].each(&:fly)

=begin
#7 — What concept does this code demonstrate? What will be the output?

This code demonstrates polymorphism through class inhertiance. 
Both the Pigeon class and Dcuk class inherit from Bird. 
When we invoke the fly method on each fo the new objects within the 
array on line 10, we are allowing objects of different types to respond
to the same method invocation. 

Bird is flying
Pigeon is flying
Duck is flying

=end 
