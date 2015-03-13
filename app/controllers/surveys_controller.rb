class SurveysController < ApplicationController
  before_action :find_song

  def new
    @survey = Survey.new
  end

  def create
    survey_params = params.require(:survey).permit(:rating)
    @survey = @song.surveys.new(survey_params)
    @survey.user = current_user
    if @survey.save
      redirect_to @song, notice: "Thanks for answering the survey!"
    else
      render "new"
    end
  end

  def find_song
    @song = Song.find_by(id: params["song_id"])
  end
end