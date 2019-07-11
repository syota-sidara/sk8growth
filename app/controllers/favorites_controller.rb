class FavoritesController < ApplicationController
	def create
  	  clip = Clip.find(params[:clip_id])
      favorite = current_user.favorites.new(clip_id: clip.id)
      favorite.save
      redirect_to clip_path(clip)
	end

  def destroy
  	clip = Clip.find(params[:clip_id])
    favorite = current_user.favorites.find_by(clip_id: clip.id)
    favorite.destroy
    redirect_to clip_path(clip)
  end
end
