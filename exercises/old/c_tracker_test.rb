require 'simplecov'
SimpleCov.start

require 'minitest/autorun'
require_relative 'calorie_tracker'

class CalorieTrackerTest < MiniTest::Test

  def test_no_arguments
    new_cal = CalorieTracker.new

    assert_equal(0, new_cal.current)
    assert_equal(2000, new_cal.goal)
  end

  def test_calorie_goal
    new_cal = CalorieTracker.new(100)

    assert_equal(100, new_cal.goal)
  end

  def test_add
    new_cal = CalorieTracker.new
    new_cal_2 = CalorieTracker.new 
    new_cal_2.current += 100

    assert_equal(0, new_cal.current)
    new_cal.add(100)
    assert_equal(100, new_cal.current)
    assert_equal(new_cal_2.current, new_cal.current)
  end

  def test_add_error
    new_cal = CalorieTracker.new

    assert_raises(ArgumentError) { new_cal.add }
  end

end


# def test_add
#   new_cal = CalorieTracker.new
#   new_cal_2 = CalorieTracker.new 
#   new_cal_2.current += 100

#   assert_equal(0, new_cal.current)
#   new_cal.add(100)
#   assert_equal(100, new_cal.current)
#   assert_equal(new_cal_2.current, new_cal.current)
# end




# def setup
#   @new_cal = CalorieTracker.new
#   @new_cal_args = CalorieTracker.new(100)
# end

# def test_no_arguments
#   assert_equal(0, @new_cal.current)
#   assert_equal(2000, @new_cal.goal)
# end

# def test_calorie_goal
#   assert_equal(100, @new_cal_args.goal)
# end

# def test_add
#   assert_equal(0, @new_cal.current)
#   @new_cal.add(100)
#   assert_equal(100, @new_cal.current)
# end

# def test_add_error
#   assert_raises(ArgumentError) { @new_cal.add }
# end 
