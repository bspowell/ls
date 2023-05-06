class Bag
  def initialize(color, material)
    @color = color
    @material = material
  end
end

=begin
If we have the class below, what would you need to call to create a new instance of this class.

You would need to call the #new method. Such as: Bag.new("blue", "wood").
Otherwise it would through a wrong number of arguments error.

=end