class HomeController < ApplicationController
  def index 
    @images = Image.where(:is_slide => true).order(:order_id)
  end
end
