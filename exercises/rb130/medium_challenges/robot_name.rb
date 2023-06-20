=begin
 
P:
- robots get created, they have no name
- first time you boot them up, a random name is generated
- names like RX837 or BC811

When you reset a robot, it's name get's erased.
When you ask it's name, it will be a new random name

Names, should be random, not predictable. 
Random, means there is risk for collision, make sure no names are the same


algo:
when you create a robot, don't create a name but initialize a namme instance variable
use name method to create a random name and return that in a string
the random name must have to random capital letters and 3 random digits
store name in directory array
check to see if name is included in the directory
if it is, change to another name

create a reset method that erases the robots name
when you invoke the name method, it will generate a new name


=end



class Robot
  @@directory = []

  def initialize
    @robot_name
  end

  def name
    return @robot_name unless @robot_name.nil?
    loop do 
      new_name = []
      2.times { new_name << ('A'..'Z').to_a.sample }
      3.times { new_name << (0..9).to_a.sample }
      @robot_name = new_name.join
      break unless name_exists?
    end
    @@directory << @robot_name
    @robot_name
  end

  def reset
    @@directory.delete(@robot_name)
    @robot_name = nil
  end

  private
  def name_exists?
    @@directory.include?(@robot_name)
  end

end

bob = Robot.new
puts bob.name
