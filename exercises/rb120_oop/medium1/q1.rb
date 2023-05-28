class Machine

  def start
    self.flip_switch(:on)
  end

  def stop
    self.flip_switch(:off)
  end

  def status
    puts "I am currently #{switch}"
  end

  private
  attr_reader :switch
  attr_writer :switch

  def flip_switch(desired_state)
    self.switch = desired_state
  end
end

stu = Machine.new
stu.start

stu.status