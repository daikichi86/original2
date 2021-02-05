class PagesController < ApplicationController

  before_action :authenticate_user!, except: [:index, :show]
  before_action :main_detail_find, only: [:show, :edit, :update, :destroy]

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
  end

  private

    def main_detail_find
      @main = Main.find(params[:id])
      @detail = Detail.find(@main.id)
    end

end
