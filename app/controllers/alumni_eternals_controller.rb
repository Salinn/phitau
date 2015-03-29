class AlumniEternalsController < ApplicationController
  before_action :set_alumni_eternal, only: [:show, :edit, :update, :destroy]
  respond_to :html
  load_and_authorize_resource

  def index
    @alumni_eternals = AlumniEternal.all
    respond_with(@alumni_eternals)
  end

  def show
    respond_with(@alumni_eternal)
  end

  def new
    @alumni_eternal = AlumniEternal.new
    respond_with(@alumni_eternal)
  end

  def edit
  end

  def create
    @alumni_eternal = AlumniEternal.new(alumni_eternal_params)
    flash[:notice] = 'AlumniEternal was successfully created.' if @alumni_eternal.save
    respond_with(@alumni_eternal)
  end

  def update
    flash[:notice] = 'AlumniEternal was successfully updated.' if @alumni_eternal.update(alumni_eternal_params)
    respond_with(@alumni_eternal)
  end

  def destroy
    @alumni_eternal.destroy
    respond_with(@alumni_eternal)
  end

  private
    def set_alumni_eternal
      @alumni_eternal = AlumniEternal.find(params[:id])
    end

    def alumni_eternal_params
      params.require(:alumni_eternal).permit(:user_id, :first_name, :last_name, :picture, :remote_picture_url, :description)
    end
end
