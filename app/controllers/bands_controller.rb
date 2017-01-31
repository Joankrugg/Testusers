class BandsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  before_action :set_band, only: [:show, :edit, :update, :destroy]

  def index
    @bands = Band.all
  end

  def new
    @band = Band.new
  end

  def create
    @band = current_user.bands.new(band_params)
      if @band.save
        redirect_to @band
      else
        render 'new'
      end
  end

  def show
  end

  def edit
  end

  def update
    @band.update(band_params)
    redirect_to band_path(@band)
  end

  def destroy
    @band.destroy
    redirect_to bands_path
  end

  private

  def set_band
    @band = Band.find(params[:id])
  end

  def band_params
    params.require(:band).permit(:band_name, :rehearsal_address, :band_facebook, :genre_id, :set_time, :members_number, :band_photo, :band_photo_cache, :band_mersh)
  end
end
