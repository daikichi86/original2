class PagesController < ApplicationController

  before_action :authenticate_user!, except: [:index, :show]

  def index
    @pages = Main.includes(:user).order("id DESC")
  end

  def show
  end

  def edit
  end

  def destroy
  end

end
