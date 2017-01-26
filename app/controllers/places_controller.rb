class PlacesController < ApplicationController
  before_action :set_place, only: [:show, :edit, :update, :destroy]

  def index
    @places = Place.all
  end

  def new
    @place = Place.new
  end

  def create
    @place = current_user.places.new(place_params)
      if @place.save
        redirect_to place_path(@place)
      else
        render 'new'
      end
  end

  def show
  end

  def edit
  end

  def update
    @place.update(place_params)
    redirect_to place_path(@place)
  end

  def destroy
    @place.destroy
    redirect_to places_path
  end

  private


  def set_place
    @place = Place.find(params[:id])
  end

  def place_params
    params.require(:place).permit(:place_name, :place_address, :capacity, :place_facebook, :place_category, :place_photo, :place_photo_cache, :genre_id)
  end
end
