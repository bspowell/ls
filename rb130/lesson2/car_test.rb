require 'minitest/autorun'
require "minitest/reporters"
Minitest::Reporters.use!

require_relative 'car'

class CarTest < MiniTest::Test

  def setup
    @car = Car.new
  end

  def test_car_exists #assert
    assert(@car)
  end

  def test_wheels #assert_equals
    assert_equal(4, @car.wheels)
  end

  def test_name_is_nil #assert_nil
    assert_nil(@car.name)
  end

  def test_raise_initialize_with_arg
    assert_raises(ArgumentError) do
      car = Car.new(name: "Joey")         # this code raises ArgumentError, so this assertion passes
    end
  end

  def test_instance_of_car
    assert_instance_of(Car, @car)
  end

  def test_includes_car
    arr = [1,2,3]
    arr << @car
    
    assert_includes(arr, @car)
  end

end