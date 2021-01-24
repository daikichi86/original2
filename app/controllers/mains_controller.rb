class MainsController < ApplicationController
  def index
  end

  def new
  end

  def create
  end

  def message_params
    params.require(:place).permit(:name, :info, :image).merge(user_id: current_user.id)
  end
end
