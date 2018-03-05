class Api::V1::AuthorsController < ApplicationController #ruby

  def index
    @authors = Author.all
    render json: @authors
  end

  def show
    @author = Author.find_by(id: params[:id])
    render json: @author
  end


end
