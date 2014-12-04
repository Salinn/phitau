class FlowerDeliveriesController < ApplicationController
  before_action :set_flower_delivery, only: [:show, :edit, :update, :destroy]

  def index
    @flower_deliveries = FlowerDelivery.all
    respond_with(@flower_deliveries)
  end

  def show
    respond_with(@flower_delivery)
  end

  def new
    @flower_delivery = FlowerDelivery.new
    respond_with(@flower_delivery)
  end

  def edit
  end

  def create
    @flower_delivery = FlowerDelivery.new(flower_delivery_params)
    flash[:notice] = 'FlowerDelivery was successfully created.' if @flower_delivery.save
    respond_with(@flower_delivery)
  end

  def update
    flash[:notice] = 'FlowerDelivery was successfully updated.' if @flower_delivery.update(flower_delivery_params)
    respond_with(@flower_delivery)
  end

  def destroy
    @flower_delivery.destroy
    respond_with(@flower_delivery)
  end

  private
    def set_flower_delivery
      @flower_delivery = FlowerDelivery.find(params[:id])
    end

    def flower_delivery_params
      params[:flower_delivery]
    end
end
