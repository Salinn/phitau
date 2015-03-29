class CompositesController < ApplicationController
  before_action :set_composite, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @composites = Composite.all
    respond_with(@composites)
  end

  def show
    respond_with(@composite)
  end

  def new
    @composite = Composite.new
    respond_with(@composite)
  end

  def edit
  end

  def create
    @composite = Composite.new(composite_params)
    flash[:notice] = 'Composite was successfully created.' if @composite.save
    respond_with(@composite)
  end

  def update
    flash[:notice] = 'Composite was successfully updated.' if @composite.update(composite_params)
    respond_with(@composite)
  end

  def destroy
    @composite.destroy
    respond_with(@composite)
  end

  private
    def set_composite
      @composite = Composite.find(params[:id])
    end

    def composite_params
      params.require(:composite).permit(:year, :picture, :remote_picture_url)
    end
end
