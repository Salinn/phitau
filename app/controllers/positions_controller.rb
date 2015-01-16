class PositionsController < ApplicationController
  before_action :set_position, only: [:show, :edit, :update, :destroy]
  respond_to :html, :xml, :json
  load_and_authorize_resource

  # GET /positions
  # GET /positions.json
  def index
    @positions = Position.all
    respond_with(@positions)
  end

  # GET /positions/1
  # GET /positions/1.json
  def show
    respond_with(@position)
  end

  # GET /positions/new
  def new
    @position = Position.new
    respond_with(@position)
  end

  # GET /positions/1/edit
  def edit
  end

  # POST /positions
  # POST /positions.json
  def create
    @position = Position.new(position_params)
    flash[:notice] = "Position was successfully created" if @position.save
    respond_with(@position)
  end

  # PATCH/PUT /positions/1
  # PATCH/PUT /positions/1.json
  def update
    flash[:notice] = "Position was successfully created" if @position.update(position_params)
    respond_with(@position)
  end

  # DELETE /positions/1
  # DELETE /positions/1.json
  def destroy
    @position.destroy
    respond_with(@position)
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_position
      @position = Position.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def position_params
      params.require(:position).permit(:user_id, :position_name,:role_permission)
    end
end
