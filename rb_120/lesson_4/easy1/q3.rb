module Speed
  def go_fast
    puts "I am a #{self.class} and going super fast!"
  end
end

class Car
  include Speed
  def go_slow
    puts "I am safe and driving slow."
  end
end

>> small_car = Car.new
>> small_car.go_fast
I am a Car and going super fast!

=begin
When we called the go_fast method from an instance of the Car class 
(as shown below) you might have noticed that the string printed when 
we go fast includes the name of the type of vehicle we are using. 
How is this done?

This is done through the self.class call. We invoke the go_fast method on 
the Car instance small_car. Then when we get to the Speed module, we invoke
the class method on self, which is the Car instance small_car, which returns
it's class, which is Car.

=end