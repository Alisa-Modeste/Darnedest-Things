class TagsController < ApplicationController

  def index
    @tags = Tag.includes(:questions).order(:name).page(params[:page]).per(40)
    render :index
  end

  def show
    @tag = Tag.find(params[:id])
    render :show
  end
end
