class BidsController < ApplicationController
  before_action :set_bid, only: [:show, :edit, :update, :destroy]
  load_and_authorize_resource
  respond_to :html

  def index
    bids = Bid.all
    @yes_bids = bids.select { |bid| bid.bid_given == 'Yes' }
    @no_bids = bids.select { |bid| bid.bid_given == 'No' }
    @deferred_bids = bids.select { |bid| bid.bid_given == 'Deferred' }
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
    respond_with(@bid, location: rush_interviews_path)
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
