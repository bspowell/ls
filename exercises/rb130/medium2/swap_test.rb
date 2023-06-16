require 'minitest/autorun'
require 'minitest/reporters'

require_relative 'swap'

Minitest::Reporters.use!

class TestTest < Minitest::Test

  def setup 
    @file = File.open('sample_test', 'r')
  end 

  def test_swap
    text = Text.new(@file.read)
    actual_text = text.swap('a', 'e')
    expected_text = 'bellon dog is running'
    
    assert_equal(expected_text, actual_text)
  end

  def test_word_count
    text = Text.new(@file.read)
    counts = text.word_count
    expected_count = 4

    assert_equal(expected_count, counts)

  end 

  def teardown
    @file.close
  end

end