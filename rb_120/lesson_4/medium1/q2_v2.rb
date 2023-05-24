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

Within the update_quantity method, we are initializing a local variable quantity instead 
of calling the setter method quantity=(). To change this we would need to 
add a setter method with attr_writer :quantity or attr_accessor :quantity and change the line to self.quantity = ... 

or we could even use @quantity to directly reference the instance variable. 

=end 