# TODO: Make all tags checkbox

class SearchesController < ApplicationController
  respond_to :json
  def create
    search = params[:search]
    tags = params[:search_tags] == "" ? nil : params[:search_tags]
    tags = format_tags(tags) unless nil?

    all_tags = params[:all_tags] == "true"

    #@results = Question.search_database(tags, search)
   # render json: result
    #render :index

    @questions = Question.page(params[:page]).search_database(search, tags, all_tags)
    #render "questions/index"
    respond_with(@questions)
  end
end
