=begin
Inside a preschool there are children, teachers, class assistants, a principle, janitors, 
and cafeteria workers. 

Both teachers and assistants can help a student with schoolwork and watch them on the playground. 

A teacher teaches 
 an assistant helps kids with any bathroom emergencies. 

Kids themselves can learn and play. 

A teacher and principle can supervise a class. 

Only the principle has the ability to expel a kid. 

Janitors have the ability to clean. 

Cafeteria workers have the ability to serve food. 

Children, teachers, class assistants, principles, janitors and cafeteria workers all have the ability to eat lunch.


=end

module Helpable
  def help_student
  end
end

module Supervisable
  def supervise
  end
end 

module Watchable
  def watch
  end
end

class Person
  def eat
  end
end

class Children < Person
  def learn
  end

  def play
  end

end

class Teacher < Person
  include Helpable
  include Supervisable 
  include Watchable 

  def teaches
  end

end

class Assistant < Person
  include Helpable
  include Watchable 

  def bathroom_emergency
  end

end

class Principle < Person
  include Supervisable

  def expel
  end

end

class Janitors < Person
  def clean
  end
end

class CafeteriaWorkers < Person
  def serve_food
  end
end

class Class
end