module Taste
  def flavor(flavor)
    puts "#{flavor}"
  end
end

class Orange
  include Taste
end

class HotSauce
  include Taste
end

=begin 
How do you find where Ruby will look for a method when that method is called?
How can you find an object's ancestors?

To look at an objects ancestors, you need to call #ancestors on the class itself.

the ancestor classes is also called a lookup chain, bc Ruby will look for a method
strating in the first class in the chain and eventually end up at BasicObject.

If no method appears, NoMethodError will be thrown


=end