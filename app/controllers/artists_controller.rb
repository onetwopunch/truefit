class ArtistsController < ApplicationController
  def index
    @artists = User.artists
  end
  def show
    @artist = User.find(params[:id])
    @shop = Shop.first
  end
end
