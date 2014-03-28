class ProfileController < ApplicationController
  before_filter :logged_in?, :only => [:index]
  
  def login
  end

  def index
    user = User.authenticate(params[:email], params[:password])
  end
  

	def logged_in?
		if session[:user_id]
			redirect_to( :action =>'login')		
		end
	end

	def authenticate
		unless session[:user_id]
			user = User.authenticate(params[:email], params[:password])
			if user
				redirect_to(:action =>'index')
			else 
				flash[:notice] = "Email/Password combination are incorrect."
				redirect_to(:action =>'login')
			end
		end
	end
end
