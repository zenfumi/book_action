class ReviewsController < ApplicationController
  before_action :correct_user, only: [:destroy, :edit]
  before_action :authenticate_user!,{only:[:edit, :update]}
  before_action :set_books, only: [:new, :create, :edit, :update, :show]

  def index
    @reviews = Review.all
  end

  def show
    @review = Review.find(params[:id])
  end

  def new
    @book = Book.find(params[:book_id])
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    if @review.save
      #遷移先、動作確認すること
      redirect_to book_path(@book)
    else
      render 'reviews/new'
    end
  end

  def edit
    @review = Review.find(params[:id])
    # newで定義していたコード
    # @review = Review.find_by(book_id:@book.id, user_id:current_user.id)
  end

  def update
    # @review = current_user.reviews.find(params[:id])
    @review = Review.find(params[:id])
    if @review.update(review_params)
       #遷移先、動作確認すること
      redirect_to book_path(@book), notice:"読書行動文を更新しました。"
    else
      render 'reviews/edit'
    end
  end
  
  def destroy
    @review.destroy
    flash[:notice] = "reviews deleted"
    redirect_to request.referrer ||　review　　
  end


  private
    def review_params
      params.require(:review).permit(
        :purpose,
        :memo,
        :plan_now,
        :plan_future,
        :spot_photo,
        :user_id
        ).merge(book_id:params[:book_id])
        .merge(user_id:current_user.id)
    end

    def correct_user
      @review = current_user.reviews.find_by(id: params[:id])
      #リダイレクト先は、とりあえずrootで設定
      redirect_to root_url if @review.nil?
    end
    
     def set_books
       @book = Book.find(params[:book_id])
     end
  
    
end
