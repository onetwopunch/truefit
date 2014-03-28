class HomeController < ApplicationController
  def index 
    @images = Dir.glob("app/assets/images/slideshow/*")
  end
end
