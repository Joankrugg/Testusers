class ShowMakersController < ApplicationController
  before_action :set_show_maker, only: [:show, :edit, :update, :destroy]

  def index
    @show_makers = ShowMaker.all
  end

  def new
    @show_maker = ShowMaker.new
  end

  def create
    @show_maker = current_user.show_makers.new(show_maker_params)
      if @show_maker.save
        redirect_to show_maker_path(@show_maker)
      else
        render 'new'
      end
  end

  def show
  end

  def edit
  end

  def update
    @show_maker.update(show_maker_params)
    redirect_to show_maker_path(@show_maker)
  end

  def destroy
    @show_maker.destroy
    redirect_to show_makers_path
  end

  private


  def set_show_maker
    @show_maker = ShowMaker.find(params[:id])
  end

  def place_params
    params.require(:show_maker).permit(:transport, :available_equipment)
  end
end
