class AnswersController < ApplicationController
  # TODO: AnswersController
  respond_to :json
  def show
    answer = Answer.find(params[:id])
    @question = answer.question

    #redirect_to(question_url(@question.id, anchor: answer.id))
    respond_with(answer)
  end

  def create
    answer = Answer.new(params[:answer])
    answer.question_id = params[:question_id]
    answer.user_id = current_user.id

    unless answer.save
      flash.now[:notice] = answer.errors.full_messages
    end

    @question = Question.find(params[:question_id])
    #render "questions/show"

    respond_to(answer)
  end
end
