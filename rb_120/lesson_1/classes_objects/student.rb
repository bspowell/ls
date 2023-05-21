class Student

  attr_reader :name

  def initialize(name, grade)
    @name = name
    @grade = grade
  end

  def better_grade_than?(other_student)
    grade > other_student.grade
  end 

  protected
   
  attr_reader :grade

end

bob = Student.new('bob', 80)
joe = Student.new('joe', 78)


puts "Well done!" if joe.better_grade_than?(bob)