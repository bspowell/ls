class Television
  def self.manufacturer
    # method logic
  end

  def model
    # method logic
  end
end

tv = Television.new # creates a new instance variable
# tv.manufacturer    # no method error - since class method exists only
tv.model           # calls the model method and runs properly

Television.manufacturer #calls the class method manufacturer
Television.model # noMethodError