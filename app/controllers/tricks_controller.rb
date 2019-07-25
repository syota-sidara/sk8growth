class TricksController < ApplicationController
	def index
		@trick = Trick.find_by(month: Time.current.month)

		# start_month = Time.current.beginning_of_month
		# end_month = Time.current.end_of_month

		# @clips = Clip.where(trick_id: @trick.id).find(Favorite.group(:clip_id).order('count(clip_id)desc').limit(10).pluck(:clip_id))
		# @clips = Clip.where(trick_id: @trick.id).find(Favorite.limit(10))

		@clips = Clip.where(trick_id: @trick.id)
		# @clips.favorites.sort.each do|key, value|
		# 	puts "#{key}: #{value}"
		# end

		@all_ranks = Clip.find(Favorite.group(:clip_id).order('count(clip_id)desc').pluck(:clip_id))

		@a = []

		@all_ranks.each do |rank|
			if @trick.month == rank.trick.month
				@a.push(rank)
			end
		end

	

	end
end
