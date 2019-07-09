class ClipsController < ApplicationController
	def index
		@clips = Clip.all.order(created_at: :desc)
	end

	def show
		@clip = Clip.find(params[:id])
		@user = User.find_by(id: @clip.user_id)
	end

	def new
		@clip = Clip.new
	end

	def create
		@clip = Clip.new(clip_params)
		@clip.user_id = current_user.id
		if @clip.save
		   redirect_to clips_path
		end
	end

	def edit
		@clip = Clip.find(params[:id])
		if current_user.id != @clip.user.id
			redirect_to clips_path
		end
	end

	def update
		@clip = Clip.find(params[:id])
		@clip.user_id = current_user.id
		if @clip.update(clip_params)
		   redirect_to clip_path
		end
	end

	

	def destroy
		@clip = Clip.find(params[:id])
		@clip.destroy
		redirect_to clips_path
	end

	





    private

    def clip_params
    	params.require(:clip).permit(:title, :video, :body)
    end
end
