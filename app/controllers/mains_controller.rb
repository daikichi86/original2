class MainsController < ApplicationController
  def index
  end

  def new
    @main = Main.new
  end

  def create
    @main = Main.new(main_params)
    if @main.valid?
      @main.save
      redirect_to root_path
    else
      render action: :new
    end
  end

  def main_params
    params.require(:main).permit(:name, :info, :image).merge(user_id: current_user.id)
  end
end
