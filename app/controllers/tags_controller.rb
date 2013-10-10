class TagsController < ApplicationController

  def index
    #pagination
    @tags = Tag.all
    render :index
  end

  def show
    @tag = Tag.find(params[:id])
    render :show
  end
end
