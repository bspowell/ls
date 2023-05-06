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
If we have these two methods in the Computer class.

What is the difference in the way the code works?

within the second class within the show_template method, we are 
calling the getter method of template by using self.template. 
However within the first one, we are simply calling the getter method 
without self - the self is redudant and both will work fine. But as a style
guide for Ruby, is to 'avoid self where not required'

=end

