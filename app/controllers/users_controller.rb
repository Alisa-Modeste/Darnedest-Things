class UsersController < ApplicationController
#  respond_to :html, :json
  respond_to :json
  before_filter :ensure_logged_in, only: [:show]

  def new
    render :new
  end

  def create
    user = User.new(params[:user])

    if user.save
      self.current_user = user
      #redirect_to root_url
      respond_with(user)
    else
      # TODO: Some kind of error message
      flash.now[:notice] = user.errors.full_messages
      render :new
    end
  end

  def show
    @user = User.eager_load([:answers, :questions]).find(params[:id])
    # TODO: Eagerloading won't do anything
    respond_with(@user)
  end

  def index
    @users = User.page(params[:page]).per(50)
    # TODO: Send a query string?
    respond_with(@users)
  end
end
