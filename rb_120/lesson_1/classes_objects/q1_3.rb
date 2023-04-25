class MyCar
	attr_accessor :color
	attr_accessor :year
	
	def initialize(y, c, m)
		@year = y
		@color = c
		@model = m
		@speed = 0
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
end

new_car = MyCar.new(2005, "Toyota 4Runner", "Blue")

new_car.spray_paint("pink")
#=> red 