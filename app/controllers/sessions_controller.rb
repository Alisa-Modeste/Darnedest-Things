class SessionsController < ApplicationController
	respond_to :json
	
  def new
    render :new
  end

  def create
    user = User.find_by_credentials(params[:email], params[:password])

    if user
      self.current_user = user
      #redirect_to root_url
      respond_with user
    else
      flash.now[:notice] = "Invalid credentials"
      render :new
    end
  end

  def destroy
    self.current_user.reset_session_token!
    session[:session_token] = nil
    #redirect_to root_url
	respond_with :no_content
  end
end
