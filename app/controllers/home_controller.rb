class HomeController < ApplicationController
  def index 
    @images = Dir.glob("app/assets/images/slideshow/*")
    puts @images
  end
end
