class FavoritesController < ApplicationController
  before_action :set_clip
	def create
  	  clip = Clip.find(params[:clip_id])
      # favorite = current_user.favorites.new(clip_id: clip.id)
      favorite = current_user.favorites.build(clip_id: params[:clip_id])
      favorite.save
      # redirect_to clip_path(clip)
	end

  def destroy
  	clip = Clip.find(params[:clip_id])
    # favorite = current_user.favorites.find_by(clip_id: clip.id)
    favorite = Favorite.find_by(clip_id: params[:clip_id],user_id: current_user.id)
    favorite.destroy
    # redirect_to clip_path(clip)
  end

  private
    def set_clip
      @clip = Clip.find(params[:clip_id])
    end
end

