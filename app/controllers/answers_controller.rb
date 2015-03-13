class AnswersController < ApplicationController

#  def index
 #   @survey = Survey.all
#  end

  def show
    @survey = Survey.find_by(id: params["id"])
    @questions = @survey.questions
  end

  def new
    @survey = survey.find_by(id: params["survey_id"])
    @answer = Answer.new
  end

  def show
    @answer = answer.find_by(id: params["answer_id"])
  end

  def create
    @survey = survey.find_by(id: params["survey_id"])
    answer_params = params.require(:answer).permit!
    @answer = @survey.answer.new(answer_params)
    @answer.user = current_user
    if @answer.save
      redirect_to @song, notice: "Thanks for answering the survey!"
    else
      render "new"
    end
  end

end