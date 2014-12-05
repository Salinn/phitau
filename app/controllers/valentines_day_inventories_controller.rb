class ValentinesDayInventoriesController < ApplicationController
  before_action :set_valentines_day_inventory, only: [:show, :edit, :update, :destroy]
  respond_to :html, :xml, :json

  def index
    @valentines_day_inventories = ValentinesDayInventory.all
    respond_with(@valentines_day_inventories)
  end

  def show
    respond_with(@valentines_day_inventory)
  end

  def new
    @valentines_day_inventory = ValentinesDayInventory.new
    respond_with(@valentines_day_inventory)
  end

  def edit
  end

  def create
    @valentines_day_inventory = ValentinesDayInventory.new(valentines_day_inventory_params)
    flash[:notice] = 'ValentinesDayInventory was successfully created.' if @valentines_day_inventory.save
    respond_with(@valentines_day_inventory)
  end

  def update
    flash[:notice] = 'ValentinesDayInventory was successfully updated.' if @valentines_day_inventory.update(valentines_day_inventory_params)
    respond_with(@valentines_day_inventory)
  end

  def destroy
    @valentines_day_inventory.destroy
    respond_with(@valentines_day_inventory)
  end

  private
    def set_valentines_day_inventory
      @valentines_day_inventory = ValentinesDayInventory.find(params[:id])
    end

    def valentines_day_inventory_params
      params.require(:valentines_day_inventory).permit(:total_red_flowers, :total_white_flowers, :total_pink_flowers, :total_large_stuffed_animials, :total_medium_stuffed_animials, :total_small_stuffed_animials, :red_flower_price, :white_flower_price, :pink_flower_price, :large_stuffed_animial_price, :medium_stuffed_animial_price, :small_stuffed_animial_price, :current_year, :red_total, :white_total, :pink_total, :large_total, :medium_total, :small_total, :total_raised, :total_cost)
    end
end
