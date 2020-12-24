class OrdersController < ApplicationController
  
  def index
  	@orders = Order.where('user_name not null and phone not null and address not null')
  end

  def show
  	@order = Order.find_by id: params[:id]
  end
  def edit
	@order = current_order  	
  end
  def update
  	@order = current_order
  	if @order.update(order_params)
  		flash[:success] = "ban da mua hang thanh cong"
  		redirect_to root_url
  	end	
  end

  private
  def order_params
  	params.require(:order).permit(:user_name, :phone, :address, :order_status)
  end
end
