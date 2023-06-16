require 'minitest/autorun'
require_relative 'cash_register'
require_relative 'transaction'

require 'minitest/reporters'
Minitest::Reporters.use!


class CashRegisterTest < Minitest::Test

  def setup

  end

  def test_accept_money
    register = CashRegister.new(1000)
    transaction = Transaction.new(20)
    transaction.amount_paid = 20

    prev_amount = register.total_money
    register.accept_money(transaction)
    current_amount = register.total_money

    assert_equal(prev_amount + 20, current_amount)
  end

  def test_change
    register = CashRegister.new(1000)
    transaction = Transaction.new(20)
    transaction.amount_paid = 50

    assert_equal(30, register.change(transaction))

  end

  def test_give_receipt
    item_cost = 35
    register = CashRegister.new(1000)
    transaction = Transaction.new(item_cost)
    assert_output("You've paid $#{item_cost}.\n") do
      register.give_receipt(transaction)
    end
  end

  def prompt_for_payment
    
  end


end
