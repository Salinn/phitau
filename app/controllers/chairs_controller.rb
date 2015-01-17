class ChairsController < ApplicationController
  before_action :set_chair, only: [:show, :edit, :update, :destroy]

  def index
    @chairs = Chair.all
    respond_with(@chairs)
  end

  def show
    respond_with(@chair)
  end

  def new
    @chair = Chair.new
    respond_with(@chair)
  end

  def edit
  end

  def create
    @chair = Chair.new(chair_params)
    flash[:notice] = 'Chair was successfully created.' if @chair.save
    respond_with(@chair)
  end

  def update
    flash[:notice] = 'Chair was successfully updated.' if @chair.update(chair_params)
    respond_with(@chair)
  end

  def destroy
    @chair.destroy
    respond_with(@chair)
  end

  private
    def set_chair
      @chair = Chair.find(params[:id])
    end

    def chair_params
      params.require(:chair).permit(:chair_name, :user_id, :role)
    end
end
