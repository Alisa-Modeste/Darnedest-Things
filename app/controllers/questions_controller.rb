class QuestionsController < ApplicationController
  def show
    @question = Question.find(params[:id])
    render :show
  end

  def new
    render :new
  end

  def create
    question = Question.new(params[:question])
    question.user_id = self.current_user.id

    if question.save
      p "question id is",question.id
      redirect_to question_url(question.id)
    else
      flash.now[:notice] = question.errors.full_messages
      render :new
    end

  end


end
