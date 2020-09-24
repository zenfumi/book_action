class ReviewsController < ApplicationController
  before_action :correct_user, only: [:destroy, :edit]
  before_action :authenticate_user!,{only:[:edit, :update]}
  #試行中
  # before_action :set_books, only: [:new]

  def index
    @reviews = Review.all
  end

  def show
  end

  def new
    # @book = Book.find(params[:id])
    if @review = Review.find_by(id:params[:id], user_id:current_user.id)
      render 'reviews/edit'
    else
     @review = Review.new
    end
  end

  def create
    @review = current_user.reviews.new(review_params)
    if @review.save
      redirect_to book_path(@book)
    else
      render 'reviews/new'
    end


    # 変更①
    # @book = Book.find_by(params[:id])
    # @review = current_user.reviews.new(review_params.merge(book_id: @book.id))
    # if @review.save
    #   redirect_to book_path(@book)
    # else
    #   render 'reviews/new'
    # end

    #変更前コード
    # @review = current_user.reviews.new(review_params)
    # if @review.save
    # #本の詳細ページにリダイレクトorトップページに遷移させる
    # redirect_to root_url, notice: "読書行動文を提出しました。"
    # else
    #   render 'reviews/new'
    # end
  end

  def edit
    @review = current_user.reviews.find_by(id:params[:id])
  end

  def update
    @review = current_user.reviews.find(params[:id])
    if @review.update(review_params)
    redirect_to root_url, notice:"読書行動文を更新しました。"
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
      params.require(:review).permit(:purpose,:memo,:plan_now,:plan_future,:spot_photo,:user_id)
    end

    def correct_user
      @review = current_user.reviews.find_by(id: params[:id])
      #リダイレクト先は、とりあえずrootで設定
      redirect_to root_url if @review.nil?
    end
    
    # reviewをnewする際に必要なメソッド？ここの意味がわからない。
    # def set_books
    #   @book = Book.find(params[:book_id])
    # end
  
    
end
