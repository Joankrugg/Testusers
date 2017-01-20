class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
    @bands = Band.all.sample(9)
  end
end
