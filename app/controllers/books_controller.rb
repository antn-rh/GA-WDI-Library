class BooksController < ApplicationController
before_action :set_book, only: [:edit, :show, :update, :destroy]

  def index
    @books = Book.all
  end

  def edit
  end

  def show
  end

  def new
    @book = Book.new
  end

  def create
    @book = Book.new(author_params)

    if @book.save
      redirect_to @book
    else
      render :new
  end

  def update
    if @book.update_attributes(book_params)
      redirect_to books_path
    else
      render :edit
    end
  end

  def destroy
    @book.destroy
    redirect_to books_path
  end

private
  def set_author
    @author = Author.find(params[:id])
  end

  def author_params
    params.require(:author).permit(:title, :summary)
  end
end
