class SessionsController < ApplicationController

  def new
    render :new
  end

  def create
    user = User.find_by_credentials(params[:user][:email], params[:user][:password])

    if user
      self.current_user = user
      redirect_to root_url
    else
      flash.now[:notice] = "Invalid credentials"
      render :new
    end
  end

  def destroy
  end
end
