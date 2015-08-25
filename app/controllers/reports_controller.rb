class ReportsController < ApplicationController

	def index
		@reports = Report.all.order("created_at DESC")
	end


	def new
		@report = Report.new
	end


	def create
		@report = Report.new(report_params)
		if @report.save
			redirect_to @report
		else
			render "new"
		end
	end


	def show
		@report = Report.find(params[:id])
	end


	def edit
		@report = Report.find(params[:id])
	end


	def update
		@report = Report.find(params[:id])
		if @report.update(params[:report].permit(:name, :details, :since, :found, :image, :city))
			redirect_to @report
		else
			render "edit"
		end
	end


	def destroy
		@report = Report.find(params[:id])
		@report.destroy
		redirect_to root_path
	end


	def found
		@reports = Report.all.order("created_at DESC")
	end

	private
		def report_params
			params.require(:report).permit(:name, :details, :since, :found, :image, :city)
		end
end
