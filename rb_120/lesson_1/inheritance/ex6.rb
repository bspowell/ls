module Flatbed
  def flatbed
    "I have a flatbed"
  end
end

class Vehicle
	attr_accessor :color
	attr_reader :year
	attr_reader :model
	
	@@number_of_vehicles = 0

	def initialize(y, m, c)
	  @@number_of_vehicles += 1
		@year = y
		@color = c
		@model = m
		@speed = 0
	end
	
	def self.num_of_vehicles
	  "The number of vehicles is #{@@number_of_vehicles}"
	end
	
	def speed_up(num)
		@speed += num
		puts "You push the gas and accelerate"
	end
	
	def brake(num)
		@brake -= num
		puts "You push the brake and decelerate"
	end
	
	def turn_off
		@speed = 0
	end
	
	def current_speed
		puts "You're going #{@speed} mph"
	end
	
	def spray_paint(color)
		@color = color
		puts "Your new color is #{@color}"
	end
	
	def self.gas(gallons, miles)
		puts "#{miles / gallons} miles per gallon of gas"
	end
	
	def whats_my_age
	  "The #{self.model} is #{age} years old"
	end 
	
	private
	
	def age
	  Time.now.year - self.year
	end

end


class MyTruck < Vehicle
	TYPE = "truck"
	DOORS = 2
	
	include Flatbed
	
	def to_s 
	  "My truck is a #{color}, #{model} from #{year}"
	end
end

class MyCar < Vehicle
	TYPE = "car"
	DOORS = 4

	def to_s
		"Your car is a #{color}, #{model} from #{year}"
	end
	
end

my_car = MyCar.new(2005, "Toyota 4Runner", "Blue")
my_truck = MyTruck.new(2001, "Toyota Tacoma", "Green")

# puts my_car
# puts my_truck

# puts Vehicle.num_of_vehicles

# puts my_truck.flatbed

puts MyCar.ancestors
puts MyTruck.ancestors
puts Vehicle.ancestors

puts my_car.whats_my_age
