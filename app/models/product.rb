class Product < ActiveRecord::Base
	has_many :order_items
	validates_numericality_of :price, :presence => true
	validates_numericality_of :stock, only_integer: true, greater_than: 0
	has_attached_file :image, styles: { medium: "300x300>", thumb: "100x100>" }
    validates_attachment_content_type :image, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]
    
	def price=(input)
    	input.delete!("Kes")
    super
	end

end
