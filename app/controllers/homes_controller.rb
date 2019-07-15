class HomesController < ApplicationController
	def index
		 @home = Home.find(1)
		 # @clip = Clip.find(Favorite.group(:clip_id).order('count(clip_id)desc')).first
		 @clips = Clip.find(Favorite.group(:clip_id).order('count(clip_id) desc').limit(10).pluck(:clip_id))
		 @clip = Clip.find(Favorite.group(:clip_id).order('count(clip_id) desc').limit(10).pluck(:clip_id)).first
		  # @clips = Clip.find(Favorite.group(:clip_id).first('count(clip_id) desc').pluck(:clip_id).first

		 @all_ranks = Clip.find(Favorite.group(:clip_id).order('count(clip_id)desc').limit(3).pluck(:clip_id))
		 @trends = Trend.all.order(created_at: :desc).limit(3)
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
