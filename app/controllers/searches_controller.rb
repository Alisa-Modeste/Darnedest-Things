# TODO: Make all tags checkbox

class SearchesController < ApplicationController
  def create
    search = params[:search]
    tags = params[:search_tags] == "" ? nil : params[:search_tags]
   # all_tags = params[:all_tags]
    #@results = Question.search_database(tags, search)
   # render json: result
    #render :index

    @questions = Question.page(params[:page]).search_database(search, tags)
    render "questions/index"
  end
end
