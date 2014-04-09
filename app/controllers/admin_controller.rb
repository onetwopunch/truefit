class AdminController < ApplicationController
  before_filter :logged_in?, :only => [:index]
  before_filter :go_to_index, :only => [:login]
  before_filter :load_vars, :except =>[:login, :authenticate, :logged_in?]
  def login    
  end

  def index  
  end
  
  def load_vars
    @user = User.find(session[:admin_user_id])
    @shop_images = Shop.first.images.where(:is_slide => false).order(:order_id)
    @slideshow = Image.where(:is_slide => true).order(:order_id)
  end
  
  def logged_in?
    unless session[:admin_user_id]
      redirect_to( :action =>'login')   
    end
  end

  def go_to_index
    if session[:admin_user_id]
      redirect_to :action => 'index'
    end
  end

  def logout
    session[:admin_user_id] = nil
    redirect_to :action => 'login'
  end

  def authenticate
    unless session[:admin_user_id]
      @user = User.authenticate(params[:email], params[:password])
      if @user && @user.isAdmin
        session[:admin_user_id] = @user.id
        redirect_to :action => 'index'
      else 
        flash[:notice] = "Email/Password combination are incorrect or you do not have permissions."
        redirect_to(:action =>'login')
      end
    else
      redirect_to :action => 'index'
    end
  end
  
  def create_user
    user = User.new
    user.first_name = params[:first_name]
    user.last_name = params[:last_name]
    user.email = params[:email]
    user.password = 'password'
    user.phone = params[:phone] == "" ? nil : params[:phone]
    user.instagram = params[:instagram] == "" ? nil : params[:instagram]
    user.twitter = params[:twitter] == "" ? nil : params[:twitter]
    user.facebook = params[:facebook] == "" ? nil : params[:facebook]
    user.tumblr = params[:tumblr] == "" ? nil : params[:tumblr]
    user.isAdmin = params[:isAdmin] || false
    user.isArtist = params[:isArtist] || false
    if user.save
      redirect_to action: 'confirm'
    else
      redirect_to :back
    end
  end

  def respond_with_partial(images, target)
    html = render_to_string(:partial => 'images', :locals => {images: images, target: target})
    respond_to do |format|
      format.json {render :json => {:html => html}}
    end  
  end

  def upload_shop_image
    @user.store_image(params[:name], @user.shop_photo_path, params[:file], false, nil, 1, false)
    load_vars
    respond_with_partial(@shop_images, "shop")
  end

  def upload_slide
    @user.store_image(params[:name], @user.slideshow_path, params[:file], false, nil, nil, true)
    load_vars
    respond_with_partial(@slideshow, "slides")
  end

  def remove_shop_photo
    image = Image.find(params[:image_id])
    image.destroy
    load_vars
    respond_with_partial(@shop_images, "shop")
  end

  def remove_slide
    image = Image.find(params[:image_id])
    image.destroy
    load_vars
    respond_with_partial(@slideshow, "slides")
  end

  def make_first_shop_photo
    image = Image.find(params[:image_id])
    first = @shop_images.first
    image.swap(first)
    load_vars
    respond_with_partial(@shop_images, "shop")  
  end

  def make_first_slide
    image = Image.find(params[:image_id])
    first = @slideshow.first
    image.swap(first)
    load_vars
    respond_with_partial(@slideshow, "slides")  
  end
end
