class Api::V1::BooksController < ApplicationController
  skip_before_action :verify_authenticity_token
  #ruby
  #rails g serializer book
#opens serializer folder. set attributes to be seen

  def index
    @books = Book.all
    render json: @books
  end

  def show #do i really need a show page if i can render the book on the page
    @book = Book.find_by(id: params[:id])
    render json: @book
  end

  def create
    @book = Book.new(book_params)
    if @book.save
      render json: @book
    else
      render json: {error: "Cant create that book"}
    end
  end


  def update
    @book = Book.find_by(id: params[:id])
    @book.update(book_params)
    render json: @book
  end


  private

  def book_params
    params.require(:book).permit(:title, :genre, :author_id)

  end

end
