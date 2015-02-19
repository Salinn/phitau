class ValentinesDayDelieveriesController < ApplicationController
  before_action :set_valentines_day_delievery, only: [:show, :edit, :update, :destroy]
  respond_to :html, :xml, :json
  load_and_authorize_resource

  def index
    @valentines_day_delieveries = ValentinesDayDelievery.all.reverse
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
    @valentines_day_delievery = calulate_cost
    flash[:notice] = 'ValentinesDayDelievery was successfully created.' if @valentines_day_delievery.save
    respond_with(@valentines_day_delievery, :location => valentines_day_path)
  end

  def update
    @valentines_day_inventory = ValentinesDayInventory.where(current_year: Time.now.year.to_s).first
    flash[:notice] = 'ValentinesDayDelievery was successfully updated.' if @valentines_day_delievery.update(valentines_day_delievery_params)
    respond_with(@valentines_day_delievery, :location => valentines_day_path)
  end

  def destroy
    @valentines_day_delievery.destroy
    respond_with(@valentines_day_delievery)
  end

  private
    def calulate_cost
      if @valentines_day_delievery.red_flower_quantity.nil? or @valentines_day_delievery.red_flower_quantity < 0
        @valentines_day_delievery.red_flower_quantity = 0
      end
      if @valentines_day_delievery.pink_flower_quantity.nil? or @valentines_day_delievery.pink_flower_quantity < 0
        @valentines_day_delievery.pink_flower_quantity = 0
      end
      if @valentines_day_delievery.small_animial_quantity.nil? or @valentines_day_delievery.small_animial_quantity < 0
        @valentines_day_delievery.small_animial_quantity = 0
      end
      flowers = @valentines_day_delievery.red_flower_quantity
      flowers += @valentines_day_delievery.pink_flower_quantity
      stuffed_animals = @valentines_day_delievery.small_animial_quantity
      if @valentines_day_delievery.payment == "Cash"
        @valentines_day_delievery.total_price = (flowers * 2) + (stuffed_animals * 2)
      else
        total = (flowers * 2) + (stuffed_animals * 2)
        @valentines_day_delievery.paypal_cost = 0.32 + (total * 0.029)
        @valentines_day_delievery.total_price = total + @valentines_day_delievery.paypal_cost
      end
      return @valentines_day_delievery
    end

    def set_valentines_day_delievery
      @valentines_day_inventory = ValentinesDayInventory.where(current_year: Time.now.year.to_s).first
      @valentines_day_delievery = ValentinesDayDelievery.find(params[:id])
    end

    def valentines_day_delievery_params
      params.require(:valentines_day_delievery).permit(:red_flower_quantity, :white_flower_quantity, :pink_flower_quantity, :large_stuffed_animial_quantity, :medium_stuffed_animial_quantity, :small_animial_quantity, :buyer_name, :buyer_phone_number, :recievers_name, :recievers_phone_number, :delivery_location, :delivery_time, :delivery_instructions, :payment, :paypal_cost, :total_price)
    end
end
