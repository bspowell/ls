class InvoiceEntry
  attr_reader :quantity, :product_name

  def initialize(product_name, number_purchased)
    @quantity = number_purchased
    @product_name = product_name
  end

  def update_quantity(updated_count)
    # prevent negative quantities from being set
    quantity = updated_count if updated_count >= 0
  end
end

=begin

Alyssa looked at the code and spotted a mistake. "This will fail when update_quantity is called",
 she says.

Can you spot the mistake and how to address it?

When we are reassigning the value of quantity, it's acting like a local variable and being initialized. 
We need to create a setter method for the instance variable @quantity for this to work. And then 
use self.quantity = ...
attr_writer "quantity"
attr_accessor "quantity"
def quantity=(q)
  @quantity = q
end

Or reference the instance variable directly within the method, @quantity = ...

=end
