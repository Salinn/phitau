class InterviewTimesController < ApplicationController
  before_action :set_interview_time, only: [:show, :edit, :update, :destroy]
  load_and_authorize_resource
  respond_to :html

  def index
    interview_times = InterviewTime.all.order(:interview_time)
    @interview_times_by_date = interview_times.group_by(&:interview_date)
    respond_with(@interview_times_by_date)
  end

  def show
    respond_with(@interview_time)
  end

  def new
    @interview_time = InterviewTime.new
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
    flash_response = @interview_time.update_rush_interview(current_user)
    flash[:notice] = flash_response if @interview_time.update(interview_time_params)
    respond_with(@interview_time, location: interview_times_path)
  end

  def destroy
    @interview_time.destroy
    respond_with(@interview_time)
  end

  private
    def set_interview_time
      @interview_time = InterviewTime.find(params[:id])
    end

    def interview_time_params
      if params[:interview_time].present?
        params.require(:interview_time).permit(:rush_interview_id, :interview_time, :interview_date)
      end
    end
end
