class UsersController < ApplicationController

  def new
    render :new
  end

  def create
    p "Well, I made it here", params[:user]
    user = User.new(params[:user])


    if user.save
      self.current_user = user
      redirect_to root_url
    else
      flash.now[:notice] = user.errors.full_messages
      render :new
    end
  end

  def show
    @user = @current_user

    render :show
  end
end
