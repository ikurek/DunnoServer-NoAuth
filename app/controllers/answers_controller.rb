class AnswersController < ApplicationController
  def new
    @question = Question.find(params[:question_id])
    @answer = @question.answers.new
  end

  def create
    answer = Answer.new(answer_params)

    if answer.save!
      redirect_to question_path(answer.question)
    else
      render :new
    end
  end

  private

  def answer_params
    params.require(:answer).permit(:body, :author, :question_id)
  end
end
