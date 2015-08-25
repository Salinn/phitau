class EventsController < ApplicationController
  before_action :set_event, only: [:show, :edit, :update, :destroy]
  load_and_authorize_resource

  respond_to :html

  def index
    @date = params[:date] ? Date.parse(params[:date]) : Date.today

    if current_user && current_user.confirmed_brother?
      @events = Event.where(event_date: @date.beginning_of_month..@date.end_of_month)
    else
      @events = Event.where(event_date: @date.beginning_of_month..@date.end_of_month, private_event: false)
    end

    @events_by_date = @events.group_by(&:event_date)
  end

  def show
    respond_with(@event)
  end

  def new
    @event = Event.new
    respond_with(@event)
  end

  def edit
  end

  def create
    @event = Event.new(event_params)
    flash[:notice] = 'Event was successfully created.' if @event.save
    respond_with(@event)
  end

  def update
    flash[:notice] = 'Event was successfully updated.' if @event.update(event_params)
    respond_with(@event)
  end

  def destroy
    @event.destroy
    respond_with(@event)
  end

  private
    def set_event
      @event = Event.find(params[:id])
    end

    def event_params
      params.require(:event).permit(:name, :description, :start_time, :end_time, :event_date, :required_event, :private_event, :user_id)
    end
end
