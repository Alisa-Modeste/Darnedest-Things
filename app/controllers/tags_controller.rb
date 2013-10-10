class TagsController < ApplicationController

  def index
    #pagination
    @tags = Tag.includes(:questions).all
    render :index
  end

  def show
    @tag = Tag.find(params[:id])
    render :show
  end
end
