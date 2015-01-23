class ReceiptsController < ApplicationController
  before_action :set_receipt, only: [:show, :edit, :update, :destroy]
  respond_to :html, :xml, :json
  load_and_authorize_resource

  def index
    @receipts = Receipt.all.reverse
    respond_with(@receipts)
  end

  def show
    respond_with(@receipt)
  end

  def new
    @receipt = Receipt.new
    respond_with(@receipt)
  end

  def edit
  end

  def create
    @receipt = Receipt.new(receipt_params)
    @receipt.user_id = current_user.id
    flash[:notice] = 'Receipt was successfully created.' if @receipt.save
    respond_with(@receipt, :location => root_path)
  end

  def update
    flash[:notice] = 'Receipt was successfully updated.' if @receipt.update(receipt_params)
    respond_with(@receipt)
  end

  def destroy
    @receipt.destroy
    respond_with(@receipt)
  end

  private
    def set_receipt
      @receipt = Receipt.find(params[:id])
    end

    def receipt_params
      params.require(:receipt).permit(:total_spent, :picture_of_receipt, :remote_picture_of_receipt, :brother_who_submitted, :seen_receipt)
    end
end
