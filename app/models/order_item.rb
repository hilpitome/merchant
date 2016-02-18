class OrderItem < ActiveRecord::Base
	belongs_to :order
	
	belongs_to :product

	attr_accessor :order

	def subtotal(quantity, price)
	 
	  price * quantity
	 
	end

	
end
