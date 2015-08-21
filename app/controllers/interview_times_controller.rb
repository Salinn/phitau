class InterviewTimesController < ApplicationController
  before_action :set_interview_time, only: [:show, :edit, :update, :destroy]
  respond_to :html

  def index
    @interview_times = InterviewTime.all
    respond_with(@interview_times)
  end

  def show
    respond_with(@interview_time)
  end

  def new
    @interview_time = InterviewTime.new
    @interview_time.create_rush_interview
    respond_with(@interview_time)
  end

  def edit
  end

  def create
    @interview_time = InterviewTime.new(interview_time_params)
    flash[:notice] = 'InterviewTime was successfully created.' if @interview_time.save
    respond_with(@interview_time, location: interview_times_path)
  end

  def update
    flash[:notice] = 'InterviewTime was successfully updated.' if @interview_time.update(interview_time_params)
    respond_with(@interview_time)
  end

  def destroy
    @interview_time.destroy
    respond_with(@interview_time)
  end

  def update_rush_interview(interview_time)
    interview_time.update_rush_interview(current_user)
  end

  helper_method :update_rush_interview

  private
    def set_interview_time
      @interview_time = InterviewTime.find(params[:id])
    end

    def interview_time_params
      params.require(:interview_time).permit(:rush_interview_id, :interview_time, :interview_date)
    end
end
