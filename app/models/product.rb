class Product < ApplicationRecord
	has_many :order_details
	validates :name, presence: true, length: {maximum: 140} 
	validates :des, presence: true
	validates :image_url, presence: true
	scope :max_price, ->(max){where("price<?" ,max)}
	scope :min_price, ->(min){where("price>=?" ,min)}
	scope :date_desc, ->{order(created_at: :DESC)}
	scope :date_asc, ->{order(created_at: :ASC)} 
	scope :price_desc, ->{order(price: :DESC)} 
	scope :price_asc, ->{order(price: :ASC)} 
	def price_product
		self.price -= price*discount/100
	end	
end
