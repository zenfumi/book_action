class BooksController < ApplicationController
  def index
  end

  def show
  end

  def new
    @book = Book.new
  end

  def create
    @book = Book.new(book_params)
    if @user.save
      
    else
     
  
    end
  end
  
  def edit
  end

  private

    def book_params
      params.require(:book).permit(:image, :title, :author)
    end

end
