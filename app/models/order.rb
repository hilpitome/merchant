class Order < ActiveRecord::Base
	has_many :order_items
	
    def total(p)

	 t = 0 

	 p.each do |m|
	 	
	  t += m.subtotal(m.quantity, m.product.price)

	  end
	  return t
    end
	
end
