class Admins::SpotsController < ApplicationController
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
		redirect_to admins_path
	end

	def edit
		@spot = Spot.find(params[:id])
	end

	def update
		@spot = Spot.find(params[:id])
		@spot.update(spot_params)
		redirect_to admins_spot_path
	end

	def destroy
		@spot = Spot.find(params[:id])
		@spot.destroy
		redirect_to admins_spots_path
	end

	private

    def spot_params
    	params.require(:spot).permit(:title, :address, :body, :profile_image, :content, :map)
    end

end
