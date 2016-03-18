class Order < ActiveRecord::Base
	has_many :order_items

	has_many :order_items, dependent: :destroy

	
    def total(p)
    # p being the instance of the order
    # t is the counter for total of all subtotals
    # m iterates over each order item

	 t = 0 

	 p.each do |m|
	 	
	  t += m.subtotal(m.quantity, m.product.price)

	  end
	  return t
    end
	
end
