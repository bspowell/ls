class Transform
  def initialize(data)
    @data = data
  end

  def uppercase
    @data.upcase
  end
  
  def self.lowercase(other)
    other.downcase
  end

end 


my_data = Transform.new('abc')
puts my_data.uppercase
puts Transform.lowercase('XYZ')