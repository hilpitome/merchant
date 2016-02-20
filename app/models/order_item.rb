class OrderItem < ActiveRecord::Base
	belongs_to :order
	
	belongs_to :product

	validates_numericality_of :quantity, only_integer: true, greater_than: 0

	def subtotal(quantity, price)
	
	  price * quantity
	 
	end

	
end
