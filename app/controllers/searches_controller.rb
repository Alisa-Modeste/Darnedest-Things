class SearchesController < ApplicationController
  def create
    search = params[:search]
    result = Question.search_database(nil, search)
    render json: result
  end
end
