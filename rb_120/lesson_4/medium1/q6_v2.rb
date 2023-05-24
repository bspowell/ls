class Computer
  attr_accessor :template

  def create_template
    @template = "template 14231"
  end

  def show_template
    template
  end
end

class Computer
attr_accessor :template

def create_template
  @template = "template 14231"
end

def show_template
  self.template
end
end

=begin
 What is the difference in the way the code works?

When we are invoking the instance method show_template, the 
second class prepended 'self' to template. However, this 
isn't necessary since we are already invoking template on the calling
object which is 'self'. They both would work like this: object.template.
Since we are in an instance method, this can only be an instance of the class Computer.



=end
