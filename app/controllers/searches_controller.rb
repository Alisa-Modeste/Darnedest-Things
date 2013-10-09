class SearchesController < ApplicationController
  def create
    search = params[:search]
    @results = Question.search_database(nil, search)
   # render json: result
    render :index
  end
end
