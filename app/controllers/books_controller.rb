class BooksController < ApplicationController
  before_action :authenticate_user!, only: [:show, :new, :create, :edit, :update]

  def index
    @books = Book.all
    @users = User.all
  end

  def show
    @book = Book.find(params[:id])
    @reviews = Review.where(book_id: @book.id).includes(:user)
  end

  def new
    @book = Book.new
  end

  def create
    @book = Book.new(book_params)
    @book.image.attach(params[:book][:image])
    if @book.save
    redirect_to books_path, notice:"「#{@book.title}」を登録しました。"
    else
    render 'new'
    end
  end

  def edit
    @book = Book.find(params[:id])
  end


  def update
    @book = Book.find(params[:id])
    if @book.update(book_params)
      redirect_to book_path(@book.id), notice: "本の情報を更新しました"
    else
      render 'edit'
    end
  end

  private

    def book_params
      params.require(:book).permit(:image, :title, :author)
    end

end
