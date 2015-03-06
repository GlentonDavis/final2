class SurveysController < ApplicationController

  def index
    @survey = Survey.all
  end

  def show
    @survey = Survey.find_by(id: params["id"])
    @questions = @survey.questions
  end

  def new
    @survey = Survey.new
  end

  def create
    survey_params = params.require(:survey).permit(:name)
    Survey.create(survey_params)
    redirect_to surveys_path
  end

  def edit
    @survey = Survey.find_by(id: params["id"])
  end

  def update
    survey_params = params.require(:survey).permit(:name)
    @survey = Survey.find_by(id: params["id"])
    @survey.update(survey_params)
    redirect_to surveys_path
  end

  def destroy
    @survey = Survey.find_by(id: params["id"])
    @survey.destroy
    redirect_to surveys_path
  end

end