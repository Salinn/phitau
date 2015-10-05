class StandardsBoardsController < ApplicationController
  before_action :set_standards_board, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @standards_boards = StandardsBoard.all.reverse
    respond_with(@standards_boards)
  end

  def show
    respond_with(@standards_board)
  end

  def new
    @standards_board = StandardsBoard.new
    @users = User.where(user_status: ['current brother','coop','associate member'])
    respond_with(@standards_board)
  end

  def edit
  end

  def create
    @standards_board = StandardsBoard.new(standards_board_params)
    flash[:notice] = 'Thanks for submitting a person to standards board' if @standards_board.save
    respond_with(@standards_board, location: standards_boards_path)
  end

  def update
    flash[:notice] = 'Thanks for updating a standards board submission' if @standards_board.update(standards_board_params)
    respond_with(@standards_board, location: standards_boards_path)
  end

  def destroy
    @standards_board.destroy
    respond_with(@standards_board)
  end

  private
    def set_standards_board
      @standards_board = StandardsBoard.find(params[:id])
    end

    def standards_board_params
      params.require(:standards_board).permit(:user_id, :reason, :position_id)
    end
end
