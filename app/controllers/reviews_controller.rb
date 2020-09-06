class ReviewsController < ApplicationController
  before_action :correct_user, only: :destroy

  def index
    @reviews = Review.all
  end

  def show
  end

  def new
    @review = Review.new
  end

  def create
    review = current_user.reviews.new(review_params)
    review.save!
    #後でユーザー専用ページに遷移させる
    redirect_to reviews_url, notice: "読書行動文を提出しました。"
  end

  def edit
    @review = current_user.reviews.find_by(id:params[:id])
  end

  def update
    review = current_user.reviews.find(params[:id])
    review.update!(review_params)
    redirect_to user_path, notice:"読書行動文を更新しました。"
  end

  def destroy
    @review.destroy
    flash[:notice] = "reviews deleted"
    redirect_to request.referrer ||　review　　
  end

  private
    def review_params
      params.require(:review).permit(:purpose,:memo,:plan_now,:plan_future,:spot_photo,:user_id)
    end

    def correct_user
      @review = current_user.reviews.find_by(id: params[:id])
      #リダイレクト先は、とりあえずrootで設定
      redirect_to root_url if @review.nil?
    end

end
