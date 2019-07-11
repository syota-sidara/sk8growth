class HomesController < ApplicationController
	def index
		 @home = Home.find(1)
	end

	def update
		 @home = Home.find(params[:id])
         @home.update(home_params)
         redirect_to homes_path
	end

	private

	def home_params
		params.require(:home).permit(:title, :video, :challenge, :clip_id, :trend_id)
	end
end
