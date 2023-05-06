class Oracle
  def predict_the_future
    "You will " + choices.sample
  end

  def choices
    ["eat a nice lunch", "take a nap soon", "stay at work late"]
  end
end

oracle = Oracle.new
oracle.predict_the_future

=begin
what is the result of the code above?

It creates a new instance object of Oracle and assigns it to local variable oracle.
We then call predict_the_future on the oracle object, which returns
"you will " and the return value of sample being called on choices method. choices
returns an array of strings. We then randomly select on of those strings from the array
using sample. 
=end