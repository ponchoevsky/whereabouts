class CommentsController < ApplicationController

	before_action :authenticate_user!

	def index
		
	end

	def new
		
	end

	def create
		@comment = Comment.new(comment_params)
		@comment.user_id = current_user.id

		if @comment.save
			redirect_to @comment
		else
			render "new"
		end
	end

	def show
		@comment = Comment.find(params[:id])
	end

	private
		def comment_params
			params.require(:comment).permit(:body)
		end

end
