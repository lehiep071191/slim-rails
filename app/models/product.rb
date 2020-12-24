class Product < ApplicationRecord
	has_many :order_details
	validates :name, presence: true, length: {maximum: 140} 
	validates :des, presence: true
	validates :image_url, presence: true

	def price_product
		self.price -= price*discount/100
	end	
end
