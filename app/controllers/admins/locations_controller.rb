class Admins::LocationsController < ApplicationController
  def new
  	@location = Location.new
  end

  def create
  	@location = Location.new(location_params)
  	@location.save
  	redirect_to new_admins_location_path
  end

  private

  def location_params
  	params.require(:location).permit(:name)
  end
end
