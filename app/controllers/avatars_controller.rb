class AvatarsController < ApplicationController
  def edit
  	@avatar = Avatar.find(1)
  end
  def update
  	@avatar = Avatar.find(1)
  	if @avatar.update avatar_params
  		redirect_to root_url
  	end	
  end
  private
  def avatar_params
  	params.require(:avatar).permit(:url)
  end
end
