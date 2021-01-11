class BooksController < ApplicationController
  def top
  end
  
  def index
    @book = Book.new
    @books = Book.all
  end

  def show
  end

  def new
    @book = Book.new
  end
  
  def creat
    bool = Book.new(book_params)
    book.save
    redirect_to book_path
  end

  def edit
    @book = Book.find(params[:id])
  end
  
  def update
    book = Book.find(params[:id])
    book.update(book_params)
    redirect_to book_path(blog)
  end
  
  private
  def book_params
    params.require(:book).permit(:title, :category, :body)
  end
end
