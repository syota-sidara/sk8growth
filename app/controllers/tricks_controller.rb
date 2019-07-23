class TricksController < ApplicationController
	def index
		@trick = Trick.find_by(month: Time.current.month)
		@clips = Clip.where(trick_id: @trick.id)
		@all_ranks = Clip.find(Favorite.group(:trick_id).order('count(clip_id)desc').limit(10).pluck(:clip_id))
	end



end
