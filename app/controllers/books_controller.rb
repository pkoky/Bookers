class BooksController < ApplicationController
  def index
    @books = Book.all
    @book = Book.new
  end

  def edit
  end

  def new
    @book = Book.new
  end
  
  def create
    book = Book.new(book_params)
    book.save
    redirect_to root_path
  end
  

  def show
  end
end


private
def book_params
  params.require(:book).permit(:title, :body)
end