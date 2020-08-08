class ReviewsController < ApplicationController
  def index
  end

  def show
  end

  def new
    @review = Review.new
  end

  def create
    review = Review.new(review_params)
    review.save!
    #後でユーザー専用ページに遷移させる
    redirect_to reviews_url, notice: "読書行動文を提出しました。"
  end

  def edit
  end


  private
  def review_params
  params.require(:review).permit(:purpose,:memo,:plan_now,:plan_future,:spot_photo)
  end
end
