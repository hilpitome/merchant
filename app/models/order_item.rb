class OrderItem < ActiveRecord::Base
	belongs_to :order
	
	belongs_to :product

	

	def subtotal(quantity, price)
	
	  price * quantity
	 
	end

	
end
