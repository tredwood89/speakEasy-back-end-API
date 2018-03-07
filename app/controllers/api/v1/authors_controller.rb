class Api::V1::AuthorsController < ApplicationController #ruby
skip_before_action :verify_authenticity_token
  def index
    @authors = Author.all
    render json: @authors
  end

  def show
    @author = Author.find_by(id: params[:id])
    render json: @author
  end

  def create
    @author = Author.new(author_params)
    if @author.save
      render json: @author
    else
      render json: {error: "Cant create that author"}
    end
  end


  def update
    @author = Author.find_by(params[:id])
    @author.update(author_params)
    render json: @author
  end



  private

  def author_params
    params.require(:author).permit(:name, :url)

  end
end
