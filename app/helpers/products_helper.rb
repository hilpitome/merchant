module ProductsHelper
	def print_price(price)

     format("Ksh %.2f", price)
    
    end

    def print_stock(stock)
    	
     if stock > 0

     	content_tag(:span, content_tag(:p, "In Stock #{stock}"), class: "in_stock")
     	
  	 else

        content_tag(:span, content_tag(:p, "Out of Stock"), class: "out_stock")

     end

    end

end

