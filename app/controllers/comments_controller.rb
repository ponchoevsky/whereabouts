class CommentsController < ApplicationController

	before_action :set_report
	before_action :authenticate_user!

	
	def create
		@comment = Comment.new(comment_params)
		@comment.user_id = current_user.id
		@comment.report_id = @report.id

		if @comment.save
			redirect_to @report, notice: 'Comment was successfully created.'
		else
			render "new"
		end
	end


	private
		def set_report
			@report = Report.find(params[:report_id])
		end

		def comment_params
			params.require(:comment).permit(:body)
		end

end
