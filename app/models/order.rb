class Order < ApplicationRecord
	has_many :order_details, dependent: :destroy
	before_save :set_subtotal
	def subtotal
		order_details.collect{ |order_detail| order_detail.valid? ? order_detail.unit_price*order_detail.quantity : 0 }.sum
	end
	private
	def set_subtotal
		self[:subtotal] = subtotal
	end	

end
