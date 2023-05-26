module Flightable
  def fly
    "I am #{self.name}, I am a superhero, and I can fly!"
  end
end

class Superhero    
  include Flightable
  attr_reader :name
  attr_accessor :ability
  
  def self.fight_crime
    "I am #{self}!"
    self.new.announce_ability
  end
  
  def initialize(name='LSMan')
    @name = name
    @ability = Ability.new
  end
  
  def announce_ability
    puts "I fight crime with my #{ability} ability!"
  end
end

class LSMan < Superhero
end

class Ability
  attr_reader :description

  def initialize(description='coding')
    @description = description
  end

  def to_s
    description
  end

end

superman = Superhero.new('Superman')

p superman.fly # => I am Superman, I am a superhero, and I can fly!

LSMan.fight_crime 
# # => I am LSMan!
# => I fight crime with my coding skills ability!
# ========================================================================
