class SpotsController < ApplicationController
	def index
		@spots = Spot.all.order(created_at: :desc)
	end

	def show
		@spot = Spot.find(params[:id])
	end

	def new
		@spot = Spot.new
	end

	def create
		@spot = Spot.new(spot_params)
		@spot.save
		redirect_to spots_path
	end

	def edit
	end

	def update
	end

	private

    def spot_params
    	params.require(:spot).permit(:title, :address, :body, :profile_image, :content, :map)
    end

end
