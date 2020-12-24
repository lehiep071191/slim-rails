class UpdateOrdersController < ApplicationController
  def update
  	@order_update = current_order
	@order_update.order_details.each do |order_detail|
		order_detail.destroy
	end
  	@order_update.update(order_status: params[:order_status],phone: params[:phone], user_name: params[:user_name], address: params[:address])
  	render json: {
  		data_update: nil
  	}
  end
end
