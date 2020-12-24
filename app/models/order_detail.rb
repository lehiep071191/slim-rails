class OrderDetail < ApplicationRecord
	belongs_to :order
	belongs_to :product

	def unit_price
		product.price_product
	end	

	def total
		unit_price*quantity
	end	
	private
	def set_total
		total*qunatity
	end	
end
