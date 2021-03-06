class CommentsController < ApplicationController

  def create
    @comment = Comment.create(comment_params)
    binding.pry
    redirect_to post_path
  end

  def update
    @comment = Comment.create(comment_params)
    #@comment.save
    binding.pry
    redirect_to post_path
  end

  private

  def comment_params
    params.require(:comment).permit(:content, :post_id, :user_id, user_attributes: [:username])
  end
end
