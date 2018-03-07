class Api::V1::CommentsController < ApplicationController
  skip_before_action :verify_authenticity_token

  def index
    @comments = Comment.all
    render json: @comments
  end

  def show #do i really need a show page if i can render the comment on the page
    @comment = Comment.find_by(id: params[:id])
    render json: @comment
  end

  def create
    @comment = Comment.new(comment_params)
    if @comment.save
      render json: @comment
    else
      render json: {error: "Cant create that comment"}
    end
  end


  def update
    @comment = Comment.find_by(id: params[:id])
    if params[:comment][:content]
      @comment.update(comment_params)
    else
      likes = @comment.like
      likes += 1
      @comment.update(like: likes)
    end
    render json: @comment
  end


  private

  def comment_params
    params.require(:comment).permit(:like, :content)

  end
end
