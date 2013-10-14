class SearchesController < ApplicationController
  def create
    search = params[:search]
    tags = params[:tags] == "" ? nil : params[:tags]
    #@results = Question.search_database(tags, search)
   # render json: result
    #render :index

    @questions = Question.page(params[:page]).search_database(tags, search)
    render "questions/index"
  end
end
