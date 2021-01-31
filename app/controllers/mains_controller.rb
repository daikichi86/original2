class MainsController < ApplicationController

  before_action :authenticate_user!, except: [:index]

  def index
  end

  def new
    @main = Maindetail.new
  end

  def create
    @main = Maindetail.new(maindetail_params)
    if @main.valid?
      @main.save
      redirect_to root_path
    else
      render action: :new
    end
  end


  private
    def maindetail_params
      params.require(:maindetail).permit(:image, :name, :info, :category_id, :country_id).merge(user_id: current_user.id)
    end
end
