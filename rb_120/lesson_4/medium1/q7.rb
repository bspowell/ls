class Light
  attr_accessor :brightness, :color

  def initialize(brightness, color)
    @brightness = brightness
    @color = color
  end

  def light_status
    "I have a brightness level of #{brightness} and a color of #{color}"
  end

end

=begin
How could you change the method name so that the method name
is more clear and less repetitive?

Just change it to "status". Cause when we are calling the method
we can just use light.status.

=end