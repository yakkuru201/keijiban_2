class CommentsController < ApplicationController
  def create
    @board = Board.find(params[:board_id])
    @comment = @board.comments.build params_comment
    @comment.save
    redirect_to board_path(@board)
  end

  def edit
    @board = Board.find(params[:board_id])
    @comment = Comment.find(params[:id])
  end

  def update
    @board = Board.find(params[:board_id])
    @comment = Comment.find(params[:id])
    @comment.update_attributes params_comment
    redirect_to board_path(@board)
  end

  def destroy
    @board = Board.find(params[:board_id])
    @comment = Comment.find(params[:id])
    @comment.destroy
    redirect_to board_path(@board)
  end

  private

  def params_comment
    params.require(:comment).permit(:content)
  end
end
