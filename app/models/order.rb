class Order < ActiveRecord::Base
	has_many :order_items

	 def total
    items.sum(&:price)
  end
end
