class TagsController < ApplicationController
  respond_to :json

  def index
    @tags = Tag.includes(:questions).order(:name).page(params[:page]).per(40)
    respond_with(@tags)
  end

  def show
    @tag = Tag.find(params[:id])
    respond_with(@tag)
  end
end
