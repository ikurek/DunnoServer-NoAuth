class Api::QuestionsController < Api::ApiController
  def index
    render json: Question.all
  end

  def show
    render json: Question.find(params[:id])
  end

  def create
    question = Question.new(question_params)

    if question.save!
      head :ok
    else
      head :bad_request
    end
  end

  private

  def question_params
    params.require(:question).permit(:title, :body, :author)
  end
end
