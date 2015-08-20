class RushInterviewsController < ApplicationController
  before_action :set_rush_interview, only: [:show, :edit, :update, :destroy]

  respond_to :html

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
      params.require(:rush_interview).permit(:user_id)
    end
end
