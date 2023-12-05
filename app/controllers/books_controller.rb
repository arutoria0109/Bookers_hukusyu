class BooksController < ApplicationController

  def index
    @book = Book.new
    @books = Book.all
  end

  def create
    book = Book.new(book_paramus)
    book.save
    redirect_to books_path
  end
  
  def show
  end
  
  def edit
  end
  
  def update
  end
  
  def destroy
  end
  
  
  private

  def book_paramus
    params.require(:book).permit(:title, :body)
  end
end


