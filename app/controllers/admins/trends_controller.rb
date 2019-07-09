class Admins::TrendsController < ApplicationController
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
		redirect_to admins_trends_path
	end

	def edit
		@trend = Trend.find(params[:id])
	end

	def update
		@trend = Trend.find(params[:id])
		@trend.update(trend_params)
		redirect_to admins_trend_path
	end

	def destroy
		@trend = Trend.find(params[:id])
		@trend.destroy
		redirect_to admins_trends_path
	end


	
	private

    def trend_params
    	params.require(:trend).permit(:title, :video, :body, :profile_image, :comment, :secondbody)
    end
end
