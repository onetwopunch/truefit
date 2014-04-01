class ProfileController < ApplicationController
  before_filter :logged_in?, :only => [:index]
  
  def login    
  end

  def index
    @user = User.find(session[:user_id])
  end
  

	def logged_in?
		unless session[:user_id]
			redirect_to( :action =>'login')		
		end
	end

  def logout
    session[:user_id] = nil
    redirect_to :action => 'login'
  end

	def authenticate
		unless session[:user_id]
			@user = User.authenticate(params[:email], params[:password])
			if @user
        session[:user_id] = @user.id
				redirect_to :action => 'index'
			else 
				flash[:notice] = "Email/Password combination are incorrect."
				redirect_to(:action =>'login')
			end
		else
      redirect_to :action => 'index'
    end
	end

  def make_cover_photo
    puts params
    image = Image.find(params[:image_id])
    first = image.user.images.order(:order_id).first
    image.swap(first)
    redirect_to :action => 'index'
  end

  def remove_photo
    image = Image.find(params[:image_id])
    image.destroy
    redirect_to :action => 'index'
  end
end
