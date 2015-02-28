class PositionsController < ApplicationController
  before_action :set_position, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @positions = Position.all
    respond_with(@positions)
  end

  def show
    respond_with(@position)
  end

  def new
    @position = Position.new
    respond_with(@position)
  end

  def edit
  end

  def create
    @position = Position.new(position_params)
    flash[:notice] = 'Position was successfully created.' if @position.save
    respond_with(@position)
  end

  def update
    flash[:notice] = 'Position was successfully updated.' if @position.update(position_params)
    respond_with(@position)
  end

  def destroy
    @position.destroy
    respond_with(@position)
  end

  private
    def set_position
      @position = Position.find(params[:id])
    end

    def position_params
      params.require(:position).permit(:position_name, :user_id, :role_id, :on_eboard)
    end
end
