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
  
  def create
	tag = Tag.new(params[:tag])
	
	if tag.save
      #redirect_to question_url(question.id)
      respond_with(tag)

    else
      flash.now[:notice] = tag.errors.full_messages
     # render :new
     respond_with false
    end
  end
end
