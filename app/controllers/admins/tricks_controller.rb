class Admins::TricksController < ApplicationController
	def new
  	@trick = Trick.new
  end

  def create
  	@trick = Trick.new(trick_params)
  	@trick.save
  	redirect_to new_admins_trick_path
  end

  private

  def trick_params
  	params.require(:trick).permit(:name)
  end
end
