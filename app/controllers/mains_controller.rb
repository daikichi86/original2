class MainsController < ApplicationController
  def index
  end

  def new
    @place = Place.new
  end

  def create
    @place = Place.new(place_params)
    if @place.valid?
      @place.save
      redirect_to root_path
    else
      render action: :new
    end
  end

  def place_params
    params.require(:place).permit(:name, :info, :image).merge(user_id: current_user.id)
  end
end
