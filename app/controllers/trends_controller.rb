class TrendsController < ApplicationController
	def index
		@trends = Trend.all.order(created_at: :desc)
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
	end

	def update
	end

	
	private

    def trend_params
    	params.require(:trend).permit(:title, :video, :body, :profile_image, :comment, :secondbody)
    end
end
