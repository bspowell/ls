class BankAccount
  attr_reader :balance

  def initialize(starting_balance)
    @balance = starting_balance
  end

  def positive_balance?
    balance >= 0
  end
end

=begin
Ben would be right since technically we are just collecting the value
that is referenced by @balanced. Since we have a getter method. We 
are calling that method and it returns the value referenced by @balance.

=end 