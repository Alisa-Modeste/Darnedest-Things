class SearchesController < ApplicationController
  def create
    search = params[:search]
    tags = params[:tags] == "" ? nil : params[:tags]
    @results = Question.search_database(tags, search)
   # render json: result
    render :index
  end
end
