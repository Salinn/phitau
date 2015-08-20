class BidsController < ApplicationController
  before_action :set_bid, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @bids = Bid.all
    respond_with(@bids)
  end

  def show
    respond_with(@bid)
  end

  def new
    @bid = Bid.new
    respond_with(@bid)
  end

  def edit
  end

  def create
    @bid = Bid.new(bid_params)
    flash[:notice] = 'Bid was successfully created.' if @bid.save
    respond_with(@bid)
  end

  def update
    flash[:notice] = 'Bid was successfully updated.' if @bid.update(bid_params)
    respond_with(@bid)
  end

  def destroy
    @bid.destroy
    respond_with(@bid)
  end

  private
    def set_bid
      @bid = Bid.find(params[:id])
    end

    def bid_params
      params.require(:bid).permit(:rush_interview_id, :bid_given)
    end
end
