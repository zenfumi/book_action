class LikesController < ApplicationController
  def create
    @book = Book.find_by(id:params[:id])
    @review = Review.find_by(id:params[:id])
    @like = Like.new(user_id:current_user.id,review_id:params[:review_id])

    #後でリダイレクト先と文法の確認
    @like.save
    redirect_to book_review_path(params[:book_id], params[:review_id])
    #  redirect_to ("/reviews/#{params[:review_id]}")
    # redirect_back(fallback_location: root_path)

  end

  def destroy
    @like = Like.find_by(user_id: current_user.id,review_id:params[:review_id])
    @like.destroy
    redirect_to book_review_path(params[:book_id], params[:review_id])
  end

end