require 'minitest/autorun'
require_relative 'cash_register'
require_relative 'transaction'

require 'minitest/reporters'
Minitest::Reporters.use!

class TransactionTest < Minitest::Test

  def test_prompt_for_payment
    t = Transaction.new(20)
    input = StringIO.new("20\n")
    output = StringIO.new
    t.prompt_for_payment(input: input, output: output)
    assert_equal(20, t.amount_paid)
  end

end
