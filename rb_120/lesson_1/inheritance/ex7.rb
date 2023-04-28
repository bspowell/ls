class Student
  attr_accessor :name
  
  def initialize(n, g)
    @name = n
    @grade = g
  end
  
  def better_grade_than?(other)
    get_grade > other.get_grade
  end

  protected
  
  def get_grade
    @grade
  end  

end

joe = Student.new("joe", 80)
bob = Student.new("bob", 90)

# puts "#{joe.get_grade}"

puts joe.name
puts "Well done!" if joe.better_grade_than?(bob)
puts "You're shit" if bob.better_grade_than?(joe)