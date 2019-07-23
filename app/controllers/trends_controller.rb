class TrendsController < ApplicationController
	def index
		# @trends = Trend.all.order(created_at: :desc)
		@trends = Trend.page(params[:page]).reverse_order.per(12)
	end

	def show
		@trend = Trend.find(params[:id])
	end

	def new
		@trend = Trend.new
	end

	def create
		@trend = Trend.new(trend_params)
		@trend.save
		redirect_to trends_path
	end

	def edit
		@trend = Trend.find(params[:id])
	end

	def update
		@trend = Trend.find(params[:id])
		@trend.update(trend_params)
		redirect_to trend_path
	end

	
	private

    def trend_params
    	params.require(:trend).permit(:title, :video, :body, :profile_image, :comment, :secondbody, :url)
    end
end
