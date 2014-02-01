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
    @board = Board.find(params[:id])
  end

  def update
    @board = Board.find(params[:id])
    @board.update_attributes params_board2
    redirect_to board_path(@board)
  end

  def destroy
  end

  def params_board
    params.require(:board).permit(:name)
  end

  def params_board2
    params.require(:board).permit(:name)
  end
end
