class AnswersController < ApplicationController

  def show
    answer = Answer.find(params[:id])
    @question = answer.question

    redirect_to(question_url(@question.id, anchor: answer.id))
  end
end
