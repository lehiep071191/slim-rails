class ProductsController < ApplicationController
	before_action :set_product, only: [:edit, :update, :show]
	def index
		@products = Product.all
	end
	def new
		@product = Product.new
	end
	def create
		@product = Product.new(product_params)
		if @product.save!
			respond_to do |format|
				format.html{ redirect_to products_path, notice: "da them san pham" }
				format.json
			end	
		else 	
			render :new
		end
	end
	def show
		@order_detail = current_order.order_details.build
	end
	def edit

	end	
	def update
		if @product.update(product_params)
			respond_to do |format|
				format.html{redirect_to products_path}
				format.json
			end	
		end	
	end
	private
	def product_params
		params.require(:product).permit(:name, :des,:price, :image_url)
	end
	def set_product
		@product = Product.find_by id: params[:id]
		if @product.nil?
			redirect_to products_path
		end	
	end
end
