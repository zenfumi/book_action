class LikesController < ApplicationController
  def create
    @like = Like.new(user_id:current_user.id,review_id:params[:review_id])
    @review = Review.find(params[:review_id])
    @book = @review.book
    @likes = Like.where(review_id: @review.id)
    @like.save
  end

  def destroy
    @like = Like.find_by(user_id: current_user.id,review_id:params[:review_id])
    @review = Review.find(params[:review_id])
    @book = @review.book
    @likes = Like.where(review_id: @review.id)
    @like.destroy
  end
end