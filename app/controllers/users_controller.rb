class UsersController < ApplicationController
	def show
		@user = User.find(params[:id])
	    @favorite = Favorite.all.order(created_at: :desc)
	    @favorite_clips = Clip.find(current_user.favorites.pluck(:clip_id))
	    # render layout: false
	    @clip = Clip.all
	end

	def edit
		@user = User.find(params[:id])
	end

	def update
	  @user = User.find(params[:id])
	    if @user.update(user_params)
	      sign_in(@user, bypass: true)
	      redirect_to user_path(current_user)
	      flash[:notice] = "更新しました"
	    else
	      flash[:edit] = "空白の欄があります。すべての記入欄を埋めてください。"
	      render 'edit'
	    end
	end


	private 

	def user_params
      params.require(:user).permit(:name,:password,:password_confirmation,:email)
    end
end
