class PostsController < ApplicationController
	def create
		@post = Post.new(post_params)
		if @post.save!
			redirect_to root_path
		end	
	end
	private 
		def post_params
			params.require(:post).permit(:body, :title)
		end
end
