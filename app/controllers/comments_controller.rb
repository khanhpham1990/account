class CommentsController < ApplicationController
  before_action :comment_params, only: [:create, :update, :delete]

  def index
    @comments = Comment.all.order(id: :desc)
  end

  def new
    @comment = Comment.new
  end

  def create
    binding.pry
    @comment = Comment.new(comment_params)
    if @comment.save
      redirect_to comments_path, flash: {success: "Create successfull"}
    else
      render :new, flash: {error: "Generate with errors"}
    end
  end

  def edit
    @comment = Comment.find_by(id: params[:id])
  end

  def destroy
    @comment = Comment.find_by(id: params[:id])
  end

  def update
    @comment = Comment.find_by(id: params[:id])
    if @comment.update(comment_params)
      redirect_to comment_path(@comment)
    else
      render :edit
    end
  end

  def show
    @comment = Comment.find_by(id: params[:id])
  end

  private
  def comment_params
    params.require(:comment).permit(:name, :email)
  end
end
