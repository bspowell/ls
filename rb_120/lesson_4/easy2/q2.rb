class Oracle
  def predict_the_future
    "You will " + choices.sample
  end

  def choices
    ["eat a nice lunch", "take a nap soon", "stay at work late"]
  end
end

class RoadTrip < Oracle
  def choices
    ["visit Vegas", "fly to Fiji", "romp in Rome"]
  end
end

trip = RoadTrip.new
trip.predict_the_future

=begin

We have an Oracle class and a RoadTrip class that inherits from the Oracle class.

What is the result.

We instantiate a new object and assign it to trip variable.
Then we call predict_the_future, since RoadTrip is a subclass of Oracle, it 
can access the methods in Oracle. So it returns "You will " + the return value of
choices.sample again.

This time since the class RoadTrip has it's own choices method, it overrides 
the Oracle choices method.

We get "You will " and a random string from the array within the choices method for RaodTrip. 

=end