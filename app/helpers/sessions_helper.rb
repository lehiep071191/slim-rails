module SessionsHelper
	def current_cart
		session[:cart] = Hash.new
	end
	def load_product_from_cart
		cart = current_cart
	    @total = 0
	    @order_details = []
	    cart.each do |key, value|
	      @product = Product.find_by id: key.to_i
	      next unless @product

	      @order_details << OrderDetail.new(product: @product, quantity: value,
	        current_price: @product.price)
	      @total += @product.price * value
	    end		
	end
end
