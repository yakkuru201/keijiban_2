class BoardsController < ApplicationController
  def index
    @boards = Board.all
  end

  def new
    @board = Board.new
  end

  def create
    @board = Board.new params_board
    @board.save
    redirect_to board_path(@board)
  end

  def show
    @board = Board.find(params[:id])
  end

  def edit
  end

  def update
  end

  def destroy
  end

  def params_board
    params.require(:board).permit(:name)
  end
end
