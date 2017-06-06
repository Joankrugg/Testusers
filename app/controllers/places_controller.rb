class PlacesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  before_action :set_place, only: [:show, :edit, :update, :destroy]

  def index
    search = params[:search]
    @places = Place.where.not(latitude: nil, longitude: nil)
    if search.try(:[], :place_address) && search[:place_address] != ""
      @place_address = search[:place_address]
      @places = @places.near(search[:place_address], 100)
    end

    @hash = Gmaps4rails.build_markers(@places) do |place, marker|
      marker.lat place.latitude
      marker.lng place.longitude

    end
  end


  def new
    @place = Place.new
  end

  def create
    @place = current_user.places.new(place_params)
      if @place.save
        redirect_to @place
      else
        render 'new'
      end
  end

  def show
    @place = Place.find(params[:id])
    @place_coordinates = {lat: @place.latitude, lng: @place.longitude}

  end

  def edit
  end

  def update
    if @place.update(place_params)
      redirect_to @place
    else
      render :edit
    end
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
