class CommentsController < ApplicationController

def create
  @comment = Comment.new(comment_params)
  @comment.user_id = current_user.id
  if @comment.save
    redirect_to book_review_path(params[:book_id],params[:review_id])
  else
    redirect_back(fallback_location: root_path)
  end
end

private
def comment_params
  params.require(:comment).permit(:content).merge(review_id: params[:review_id])
end

end

