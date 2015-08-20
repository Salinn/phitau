class InterviewQuestionnairesController < ApplicationController
  before_action :set_interview_questionnaire, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @interview_questionnaires = InterviewQuestionnaire.all
    respond_with(@interview_questionnaires)
  end

  def show
    respond_with(@interview_questionnaire)
  end

  def new
    @interview_questionnaire = InterviewQuestionnaire.new
    respond_with(@interview_questionnaire)
  end

  def edit
  end

  def create
    @interview_questionnaire = InterviewQuestionnaire.new(interview_questionnaire_params)
    flash[:notice] = 'InterviewQuestionnaire was successfully created.' if @interview_questionnaire.save
    respond_with(@interview_questionnaire)
  end

  def update
    flash[:notice] = 'InterviewQuestionnaire was successfully updated.' if @interview_questionnaire.update(interview_questionnaire_params)
    respond_with(@interview_questionnaire)
  end

  def destroy
    @interview_questionnaire.destroy
    respond_with(@interview_questionnaire)
  end

  private
    def set_interview_questionnaire
      @interview_questionnaire = InterviewQuestionnaire.find(params[:id])
    end

    def interview_questionnaire_params
      params.require(:interview_questionnaire).permit(:rush_interview_id, :date_of_birth, :hometown, :current_address, :room_number, :grade_point_average, :major, :year_in_school, :nickname, :outside_activities, :hobbies, :brothers_you_know, :rush_events_attended, :reason_for_rushing)
    end
end
