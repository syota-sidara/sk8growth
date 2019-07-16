class SpotsController < ApplicationController
	def index
		# @spots = Spot.all.order(created_at: :desc)
		# @locations = Location.all.order(created_at: :desc).limit(3)
		#@locations = Location.find(Spot.group(:location_id).order(created_at: :desc).limit(3).pluck(:location_id))
		@locations = Location.all
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
		redirect_to admins_spots_path
	end

	def edit
		@spot = Spot.find(params[:id])
	end

	def update
		@spot = Spot.find(params[:id])
		@spot.update(spot_params)
		redirect_to spot_path
	end

	private

    def spot_params
    	params.require(:spot).permit(:title,:address,:body,:content,:map,:location_id,:profile_image)
    end

end
