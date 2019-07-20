class Admins::ClipsController < ApplicationController
    def index
		@clips = Clip.all.order(created_at: :desc)
	end

	def show
		@clip = Clip.find(params[:id])
	end

	def destroy
		@clip = Clip.find(params[:id])
		@clip.destroy
		redirect_to admins_clips_path
	end



    private

    def clip_params
    	params.require(:clip).permit(:title, :video, :body, :trick_id)
    end
end
