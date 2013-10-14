class UsersController < ApplicationController

  before_filter :ensure_logged_in, only: [:show]

  def new
    render :new
  end

  def create
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
    @user = User.eager_load([:answers, :questions]).find(params[:id])

    render :show
  end

  def index
    @users = User.page(params[:page]).per(50)
    render :index
  end
end
