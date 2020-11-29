class CommentsController < ApplicationController

def create
  @comment = Comment.new(comment_params)
  @comment.user_id = current_user.id
  @comment.save
  redirect_to book_review_path(params[:book_id],params[:review_id])
end

private
def comment_params
  params.require(:comment).permit(:content).merge(review_id: params[:review_id])
end
end

