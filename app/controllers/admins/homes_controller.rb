class Admins::HomesController < ApplicationController
  
  def index
    
    @home = Home.find(3)
    @trends = Trend.all.order(created_at: :desc).limit(3)
    @clips = Clip.find(Favorite.group(:clip_id).order('count(clip_id) desc').limit(10).pluck(:clip_id))
  end

  def new
    @home = Home.new
  end

  def edit
    @home = Home.find(params[:id])
  end


  def top
  	render layout: false
  end

  def create
    @home = Home.new(home_params)
    @home.save
    redirect_to admins_homes_path
  end

  def destroy
    @home = Home.find(params[:id])
    @home.destroy
    redirect_to admins_homes_path
  end

  def update
    @home = Home.find(params[:id])
    @home.update(home_params)
    redirect_to admins_homes_path
  end

  private

  def home_params
    params.require(:home).permit(:id, :title, :video, :challenge, :clip_id, :trend_id)
  end
  
end
