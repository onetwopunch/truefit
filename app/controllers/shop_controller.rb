class ShopController < ApplicationController
  def index
    @shop = Shop.first

  end
end
