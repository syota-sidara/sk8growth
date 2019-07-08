class Admins::ClipsController < ApplicationController
    def index
		@clips = Clip.all.order(created_at: :desc)
	end

	def show
		@clip = Clip.find(params[:id])
	end

	def new
		@clip = Clip.new
	end

	def create
		@clip = Clip.new(clip_params)
		@clip.save
		redirect_to admins_clips_path
	end

	def edit
		@clip = Clip.find(params[:id])
	end

	def update
		@clip = Clip.find(params[:id])
		@clip.update(clip_params)
		redirect_to admins_clip_path
	end



    private

    def clip_params
    	params.require(:clip).permit(:title, :video, :body)
    end
end
