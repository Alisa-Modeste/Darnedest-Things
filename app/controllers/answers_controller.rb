class AnswersController < ApplicationController

  def show
    answer = Answer.find(params[:id])
    @question = answer.question

    redirect_to(question_url(@question.id, anchor: answer.id))
  end

  def create
    p "What do I get"
    p
    p params[:answer]
    # current_user.id

    answer = Answer.new(params[:answer])
    answer.question_id = params[:question_id]
    answer.user_id = current_user.id

   # if answer.save
    if false
      render json: "HEllo"
    else
      flash.now[:notice] = "answer.errors.full_messages"
      #flash.now[:notice] = answer.errors.full_messages
      @question = Question.find(params[:question_id])
      render "questions/show"
    end
  end
end
