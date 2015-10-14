class InterviewQuestionnairesController < ApplicationController
  before_action :set_interview_questionnaire, only: [:show, :edit, :update, :destroy]
  load_and_authorize_resource

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
    @residences = CurrentResidence.all.order(:building_name)
  end

  def create
    @interview_questionnaire = InterviewQuestionnaire.new(interview_questionnaire_params)
    flash[:notice] = 'InterviewQuestionnaire was successfully created.' if @interview_questionnaire.save
    respond_with(@interview_questionnaire)
  end

  def update
    flash[:notice] = 'Thanks for telling us a little more about yourself!' if @interview_questionnaire.update(interview_questionnaire_params)
    respond_with(@interview_questionnaire, location: root_path)
  end

  def destroy
    @interview_questionnaire.destroy
    respond_with(@interview_questionnaire, location: interview_questionnaires_path)
  end

  private
    def set_interview_questionnaire
      @interview_questionnaire = InterviewQuestionnaire.find(params[:id])
    end

    def interview_questionnaire_params
      params.require(:interview_questionnaire).permit(:rush_interview_id, :date_of_birth, :hometown, :current_residence_id, :room_number, :grade_point_average, :major, :year_in_school, :nickname, :outside_activities, :hobbies, :brothers_you_know, :rush_events_attended, :reason_for_rushing)
    end
end
