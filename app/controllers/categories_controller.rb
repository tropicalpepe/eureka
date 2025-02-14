class CategoriesController < ApplicationController
  def index
    @categories = Category.all
  end

  def new
    @category = Category.new
  end

  def create
    @category = Category.new(category_params)
    if @category.save
      redirect_to root_path
    else
      render :new, status: :unprocessable_content
    end
  end

  private
  def category_params
    params.expect(category: [:name, :color])
  end
end
