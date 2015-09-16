class RushInterviewsController < ApplicationController
  before_action :set_rush_interview, only: [:show, :edit, :update, :destroy]
  load_and_authorize_resource
  respond_to :html, :js

  def index
    @rush_interviews = RushInterview.all
    respond_with(@rush_interviews)
  end

  def show
    respond_with(@rush_interview)
  end

  def new
    @rush_interview = RushInterview.new
    respond_with(@rush_interview)
  end

  def edit
  end

  def create
    @rush_interview = RushInterview.new(rush_interview_params)
    flash[:notice] = 'RushInterview was successfully created.' if @rush_interview.save
    respond_with(@rush_interview)
  end

  def update
    flash[:notice] = 'RushInterview was successfully updated.' if @rush_interview.update(rush_interview_params)
    respond_with(@rush_interview)
  end

  def destroy
    @rush_interview.destroy
    respond_with(@rush_interview)
  end

  private
    def set_rush_interview
      @rush_interview = RushInterview.find(params[:id])
    end

    def rush_interview_params
      params.require(:rush_interview).permit(:user_id,
                                             bid_attributes: [:bid_given],
                                             interview_time_attributes: [:interview_time, :interview_date],
                                             interview_questionnaire_attributes: [:rush_interview_id, :date_of_birth,
                                                                                  :hometown, :current_address,
                                                                                  :room_number, :grade_point_average,
                                                                                  :major, :year_in_school, :nickname,
                                                                                  :outside_activities, :hobbies,
                                                                                  :brothers_you_know,
                                                                                  :rush_events_attended,
                                                                                  :reason_for_rushing])
    end
end
