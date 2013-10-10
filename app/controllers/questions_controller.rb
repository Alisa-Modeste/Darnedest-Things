# TODO: Get the tags in the right format
# TODO: Add validation for the existence of tag as well as title length (mentioned elsewhere)
# TODO: Put a unique index on tag names
# TODO: Escape / character --> \/

class QuestionsController < ApplicationController
  def show
    @question = Question.find(params[:id])
    render :show
  end

  def new
    @tags = Tag.all.map do |tag|
      tag.name
    end

    render :new
  end

  def create
    question = Question.new(params[:question])
    question.user_id = self.current_user.id

    tags = params[:question_tags]
    tags = tags.split(",")
    p "These are the tags", tags
    #tag_ids = Tag.where(name: tags).select(:id).map{ |x| x.id }
    #found_tags = Tag.where(name: tags).select([:id, :name]).map{ |x| {id: x.id, name: x.name} }
    found_tag_ids = []
    found_tag_names = []

    Tag.where(name: tags).select([:id, :name]).each do |x|
      found_tag_ids << x.id
      found_tag_names << x.name
    end

    tag_ids = []
    tags.each do |tag|
      if found_tag_names.include? tag
        position = found_tag_names.index(tag)
        tag_ids << found_tag_ids[position]
      else
        new_tag = Tag.create({name: tag })
        tag_ids << new_tag.id
      end
    end

    question.tag_ids = tag_ids

    if question.save
      redirect_to question_url(question.id)
    else
      flash.now[:notice] = question.errors.full_messages
      render :new
    end

  end

  def index
    @questions = Question.page(params[:page]).per(10)
    render :index
  end

end
