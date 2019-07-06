class ClipsController < ApplicationController
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
		redirect_to clips_path
	end

	def edit
	end

	def update
	end



    private

    def clip_params
    	params.require(:clip).permit(:title, :video, :body)
    end
end
