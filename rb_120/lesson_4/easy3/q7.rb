class Light
  attr_accessor :brightness, :color

  def initialize(brightness, color)
    @brightness = brightness
    @color = color
  end

  def self.information
    return "I want to turn on the light with a brightness level of super high and a color of green"
  end

end

#What is used in this class but doesn't add any value?

#the return method is redundant. Since in ruby the last line in any method is returned 
# we don't need to add 'return'. 