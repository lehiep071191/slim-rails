class Admin::ProductsController < Admin::ApplicationController
	before_action :set_product, only: [:show, :edit, :update, :destroy]
	def index
		@products = Product.all
	end	
	def new
		@product = Product.new
	end
	def create
		@product = Product.new(product_params)
		if @product.save
			respond_to do |format|
				format.html{redirect_to admin_products_path}
				format.js
			end	
		end
	end
	def show
		
	end
	def edit
		
	end
	def update
		@product.update!(product_params)
		respond_to do |format|
			format.html{redirect_to admin_products_path}
			format.js
		end	
	end
	def destroy
		@product.destroy
		respond_to do |format|
			format.html{redirect_to admin_products_path}
			format.js
		end	
	end
	private
	def product_params
		params.require(:product).permit(:name, :price, :discount, :des, :image_url)
	end
	def set_product
		@product = Product.find_by id: params[:id]
		if @product.nil?
			flash[:danger] = "khong tim thay san pham nay"
		end	
	end
end