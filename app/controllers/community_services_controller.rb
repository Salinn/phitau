class CommunityServicesController < ApplicationController
  before_action :set_community_service, only: [:show, :edit, :update, :destroy]
  load_and_authorize_resource

  respond_to :html

  def index
    @community_services = CommunityService.all
    respond_with(@community_services)
  end

  def brothers_hours
    @users = User.order(:first_name).where(user_status: 'current brother')
  end

  #TODO Add this feature in
  def brothers_events
    @user = User.find(params[:user_id])
    if @user.nil?
      @user = current_user
      render notice: 'Issue loading, Currently working on this feature'
    end
  end

  def show
    respond_with(@community_service)
  end

  def new
    @community_service = CommunityService.new
    respond_with(@community_service)
  end

  def edit
  end

  def enter_hours_manually
    @community_service = CommunityService.new
    render template: 'community_services/enter_hours_manually'
  end

  def create
    @community_service = CommunityService.new(community_service_params)
    flash[:notice] = 'CommunityService was successfully created.' if @community_service.save
    respond_with(@community_service, :location => '/resources')
  end

  def update
    flash[:notice] = 'CommunityService was successfully updated.' if @community_service.update(community_service_params)
    respond_with(@community_service, :location => community_services_path)
  end

  def destroy
    @community_service.destroy
    respond_with(@community_service)
  end

  private
    def set_community_service
      @community_service = CommunityService.find(params[:id])
    end

    def community_service_params
      params.require(:community_service).permit(:event_name, :date_of_event, :link_to_event, :user_id, :hours_volunteered)
    end
end
