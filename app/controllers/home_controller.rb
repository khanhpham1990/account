class HomeController < ApplicationController
  before_action :category_params, only: [:create, :edit]

  def index
    @categories = Category.all
  end

  def create
    binding.pry
  end

  def new
    @category = Category.new
  end

  def edit
  end

  def delete
  end

  def show
  end

  private
  def category_params
    params.require(:category).permit(:content, :freezeflag)
  end
end
