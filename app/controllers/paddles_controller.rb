class PaddlesController < ApplicationController
  before_action :set_paddle, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @paddles = Paddle.all
    respond_with(@paddles)
  end

  def show
    respond_with(@paddle)
  end

  def new
    @paddle = Paddle.new
    respond_with(@paddle)
  end

  def edit
  end

  def create
    @paddle = Paddle.new(paddle_params)
    flash[:notice] = 'Paddle was successfully created.' if @paddle.save
    respond_with(@paddle)
  end

  def update
    flash[:notice] = 'Paddle was successfully updated.' if @paddle.update(paddle_params)
    respond_with(@paddle)
  end

  def destroy
    @paddle.destroy
    respond_with(@paddle)
  end

  private
    def set_paddle
      @paddle = Paddle.find(params[:id])
    end

    def paddle_params
      params.require(:paddle).permit(:pledge_class, :picture)
    end
end
