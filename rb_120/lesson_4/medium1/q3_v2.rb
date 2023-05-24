class InvoiceEntry
  attr_reader :quantity, :product_name

  def initialize(product_name, number_purchased)
    @quantity = number_purchased
    @product_name = product_name
  end

  def update_quantity(updated_count)
    quantity = updated_count if updated_count >= 0
  end
end

=begin
Alyssa noticed that this will fail when update_quantity is called. Since quantity is an instance variable,
 it must be accessed with the @quantity notation when setting it. 
 One way to fix this is to change attr_reader to attr_accessor and change quantity to self.quantity.

Is there anything wrong with fixing it this way?

This will work and the code will funciton as expected. However, wwe are then exposing @product_name 
so that the rest of the code can directly change that instance variable. It would be bettter
if we had it on a separate line to ensure we are not providing too much access to the rest of 
the code.

The protection built into the update_quantity method will be cirucmvented and poetntially pose problems
later on.

=end 