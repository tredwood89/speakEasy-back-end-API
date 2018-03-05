class Api::V1::BooksController < ApplicationController #ruby
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


end
