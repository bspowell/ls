module Towable 

  def can_tow?(pounds)
    pounds < 2000
  end

end 

class Vehicle
  attr_accessor :speed, :on_off, :year, :make, :model, :color

  @@number_of_vehicles = 0

	def initialize(year, color, model)
		@year = year
		@color = color 
		@model = model 
		@speed = 0
		@on_off = 'on'
    @@number_of_vehicles += 1
	end

  def gas_mileage(miles, gallons)
    puts "Your car has #{miles / gallons} mpg"
  end

	def speed_up
		self.speed += 10
		puts "You increased to a speed of #{speed}"
	end
	
	def brake
		self.speed -= 10
		puts "You slowed down to a speed of #{speed}"
	end

	def turn_off
		self.on_off = 'off'
		puts "You turned off the car"
	end 

  def self.how_many_vehicles
    puts "There have been #{@@number_of_vehicles} created"
  end

  def whats_my_age
    "Your vehicle is #{age} years old"
  end


  private

  def age
    t = Time.new
    t.year - year.to_i
  end

end

class MyTruck < Vehicle
  include Towable
  DOORS = 2

  def to_s 
    "Your truck is a #{year}, #{color} #{model}"
  end 
end

class MyCar < Vehicle
  DOORS = 4

  def to_s 
    "Your car is a #{year}, #{color} #{model}"
  end 

end 

new_car = MyCar.new("1994", "blue", "4runner")
new_truck = MyTruck.new("2010", "Green", "Tacoma")

new_car.speed_up
new_car.brake
new_car.turn_off
new_car.gas_mileage(500, 20)
puts new_car
puts new_truck

puts MyCar.ancestors 

puts new_car.whats_my_age