class EboardsController < ApplicationController
  before_action :set_eboard, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @eboards = Eboard.all
    respond_with(@eboards)
  end

  def show
    respond_with(@eboard)
  end

  def new
    @eboard = Eboard.new
    respond_with(@eboard)
  end

  def edit
  end

  def create
    @eboard = Eboard.new(eboard_params)
    flash[:notice] = 'Eboard was successfully created.' if @eboard.save
    respond_with(@eboard)
  end

  def update
    flash[:notice] = 'Eboard was successfully updated.' if @eboard.update(eboard_params)
    respond_with(@eboard)
  end

  def destroy
    @eboard.destroy
    respond_with(@eboard)
  end

  private
    def set_eboard
      @eboard = Eboard.find(params[:id])
    end

    def eboard_params
      params.require(:eboard).permit(:position_name, :user_id, :role)
    end
end
