class ValentinesDayDelieveriesController < ApplicationController
  before_action :set_valentines_day_delievery, only: [:show, :edit, :update, :destroy]
  respond_to :html, :xml, :json
  load_and_authorize_resource

  def index
    @valentines_day_delieveries = ValentinesDayDelievery.all
    respond_with(@valentines_day_delieveries)
  end

  def show
    respond_with(@valentines_day_delievery)
  end

  def new
    @valentines_day_delievery = ValentinesDayDelievery.new
    @valentines_day_inventory = ValentinesDayInventory.where(current_year: Time.now.year.to_s).first
    respond_with(@valentines_day_delievery)
  end

  def edit
    @valentines_day_inventory = ValentinesDayInventory.where(current_year: Time.now.year.to_s).first
  end

  def create
    @valentines_day_inventory = ValentinesDayInventory.where(current_year: Time.now.year.to_s).first
    @valentines_day_delievery = ValentinesDayDelievery.new(valentines_day_delievery_params)
    flash[:notice] = 'ValentinesDayDelievery was successfully created.' if @valentines_day_delievery.save
    respond_with(@valentines_day_delievery)
  end

  def update
    @valentines_day_inventory = ValentinesDayInventory.where(current_year: Time.now.year.to_s).first
    flash[:notice] = 'ValentinesDayDelievery was successfully updated.' if @valentines_day_delievery.update(valentines_day_delievery_params)
    respond_with(@valentines_day_delievery)
  end

  def destroy
    @valentines_day_delievery.destroy
    respond_with(@valentines_day_delievery)
  end

  private
    def set_valentines_day_delievery
      @valentines_day_inventory = ValentinesDayInventory.where(current_year: Time.now.year.to_s).first
      @valentines_day_delievery = ValentinesDayDelievery.find(params[:id])
    end

    def valentines_day_delievery_params
      params.require(:valentines_day_delievery).permit(:red_flower_quantity, :white_flower_quantity, :pink_flower_quantity, :large_stuffed_animial_quantity, :medium_stuffed_animial_quantity, :small_animial_quantity, :buyer_name, :buyer_phone_number, :recievers_name, :recievers_phone_number, :delivery_location, :delivery_time, :delivery_instructions, :payment, :paypal_cost, :total_price)
    end
end
