class IdeasController < ApplicationController
  def index
    @category = Category.find(params[:category_id])
    @categories = Category.all
    @selected_category_id = params[:category_id] || "all"
    @ideas = @category.ideas
  end

  def new
    @category = Category.find(params[:category_id])
  end

  def create
    @category = Category.find(params[:category_id])
    @idea = @category.ideas.create(idea_params)
    redirect_to(root_path)
  end

  private
  def idea_params
    params.expect(idea: [ :title, :description ])
  end
end
