class CurrentResidencesController < ApplicationController
  before_action :set_current_residence, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @current_residences = CurrentResidence.all
    respond_with(@current_residences)
  end

  def show
    respond_with(@current_residence)
  end

  def new
    @current_residence = CurrentResidence.new
    respond_with(@current_residence)
  end

  def edit
  end

  def create
    @current_residence = CurrentResidence.new(current_residence_params)
    flash[:notice] = 'CurrentResidence was successfully created.' if @current_residence.save
    respond_with(@current_residence)
  end

  def update
    flash[:notice] = 'CurrentResidence was successfully updated.' if @current_residence.update(current_residence_params)
    respond_with(@current_residence)
  end

  def destroy
    @current_residence.destroy
    respond_with(@current_residence)
  end

  private
    def set_current_residence
      @current_residence = CurrentResidence.find(params[:id])
    end

    def current_residence_params
      params.require(:current_residence).permit(:building_name, :map_location)
    end
end
