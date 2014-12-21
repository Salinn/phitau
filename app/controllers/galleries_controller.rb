class GalleriesController < ApplicationController
  before_action :set_gallery, only: [:show, :edit, :update, :destroy]
  respond_to :html, :xml, :json
  load_and_authorize_resource

  def index
    @galleries = Gallery.all
    respond_with(@galleries)
  end

  def show
    respond_with(@gallery)
  end

  def new
    @gallery = Gallery.new
    respond_with(@gallery)
  end

  def edit
  end

  def create
    @gallery = Gallery.new(gallery_params)
    flash[:notice] = 'Gallery was successfully created.' if @gallery.save
    respond_with(@gallery)
  end

  def update
    flash[:notice] = 'Gallery was successfully updated.' if @gallery.update(gallery_params)
    respond_with(@gallery)
  end

  def destroy
    @gallery.destroy
    respond_with(@gallery)
  end

  private
    def set_gallery
      @gallery = Gallery.find(params[:id])
    end

    def gallery_params
      params.require(:gallery).permit(:name, :private)
    end
end
