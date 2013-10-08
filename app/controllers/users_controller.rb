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
    p "if they are the same", self.current_user.id == params[:id].to_i
    p "self.current_user.id", self.current_user.id
    p "== params[:id]", params[:id]

    #if different I can send to another namespace's show page - one with less info
    @user = self.current_user

    render :show
  end
end
