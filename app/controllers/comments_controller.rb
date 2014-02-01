class CommentsController < ApplicationController
  def create
    @board = Board.find(params[:board_id])
    @comment = @board.comments.build params_comment
    @comment.save
    redirect_to board_path(@board)
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def params_comment
    params.require(:comment).permit(:content)
  end
end
