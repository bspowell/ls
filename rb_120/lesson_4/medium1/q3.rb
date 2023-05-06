class InvoiceEntry
  attr_reader :quantity, :product_name

  def initialize(product_name, number_purchased)
    @quantity = number_purchased
    @product_name = product_name
  end

  def update_quantity(updated_count)
    self.quantity = updated_count if updated_count >= 0
  end

  private

  def quantity=(q)
    @quantity = q
  end

end

my_invoice = InvoiceEntry.new('paper', 5)

my_invoice.update_quantity(6)

puts my_invoice.quantity
puts my_invoice.product_name


=begin
Alyssa noticed that this will fail when update_quantity is called. 
Since quantity is an instance variable, it must be accessed with 
the @quantity notation when setting it. One way to fix this is to 
change attr_reader to attr_accessor and change quantity to self.quantity.

Is there anything wrong with fixing it this way?

nothing wrong with the syntax. 
However, you are now allowing clients of the class to chagne the quantity directly
(calling the accessor within the instance.quantity = new value notation)
rather than by going through update_quantity method.

This means the protection built into the update quantity metho cna be circumvented and 
potetntially pose problems down the line.


=end