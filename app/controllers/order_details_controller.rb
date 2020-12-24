class OrderDetailsController < ApplicationController
	def create
		@order = current_order
		@order_detail = @order.order_details.new(order_detail_params)
		@order.save
		session[:order_id] = @order.id
	end

	def show
		@order_detail = OrderDetail.find_by id: params[:id]
	end
	def update
		@order_detail = OrderDetail.find_by id: params[:id]
		@order_detail.update!(quantity: params[:quantity])
		render json: {
			data_total: @order_detail.quantity*@order_detail.product.price
		}
	end	
	def destroy
		@order_detail = OrderDetail.find_by id: params[:id]
		byebug
		@order_detail.destroy
		respond_to do |format|
			format.html{ redirect_to carts_path}
			format.js
		end 
	end	


	private
	def order_detail_params
		params.require(:order_detail).permit(:product_id, :quantity)
	end
end
