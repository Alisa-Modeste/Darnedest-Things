class TagsController < ApplicationController

  def index
    @tags = Tag.includes(:questions).order(:name).page(params[:page]).per(4)
    render :index
  end

  def show
    @tag = Tag.find(params[:id])
    @questions = @tag.questions.page(params[:page]).per(2)
    render :show
  end
end
