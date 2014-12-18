class ImagesController < ApplicationController
  before_action :set_image, only: [:show, :edit, :update, :destroy]
  respond_to :html, :xml, :json

  def index
    @images = Image.all
    respond_with(@images)
  end

  def show
    respond_with(@image)
  end

  def new
    @image = Image.new
    respond_with(@image)
  end

  def edit
  end

  def create
    @image = Image.new(image_params)
    flash[:notice] = 'Image was successfully created.' if @image.save
    respond_with(@image)
  end

  def update
    flash[:notice] = 'Image was successfully updated.' if @image.update(image_params)
    respond_with(@image)
  end

  def destroy
    @image.destroy
    respond_with(@image)
  end

  private
    def set_image
      @image = Image.find(params[:id])
    end

    def image_params
      params.require(:image).permit(:name, :width, :height, :remote_name_url)
    end
end
