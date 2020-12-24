class ApplicationController < ActionController::Base
	include ApplicationHelper
	before_action :avatar

	def avatar
		@avatar = Avatar.find(1)
	end	
end
