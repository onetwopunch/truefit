class HomeController < ApplicationController
  def index 
    @images = Image.where(:is_slide => true)
  end
end
