class ShopController < ApplicationController
  def index
    @shop = Shop.first
    @users = User.all
  end
end
