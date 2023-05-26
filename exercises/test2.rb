class Teacher 

end

class Necromancer

end

class Student
  def initialize(specialty)
    Class.new specialty
  end
end

student = Student.new(Necromancer)

p Student.ancestors