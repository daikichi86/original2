class PagesController < ApplicationController

  before_action :authenticate_user!, except: [:index, :show]
  before_action :main_find, only: [:show]

  def index
    @pages = Main.includes(:user).order("id DESC")
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
    if current_user.id == @main.user_id
      @main.destroy
      redirect_to root_path
    else
      redirect_to root_path
    end
  end

  private

    def main_find
      @main = Main.find(params[:id])
      @detail = @main.detail
    end

end
