class Public::RecipesController < ApplicationController

  def new

  end

  def index
    @recipes = Recipe.all

  end

  def show
    @recipe = Recipe.find(params[:id])
    @comment = Comment.new
  end

  def edit
  end

  def create
    @recipe = Recipe.new(recipe_params)
    @recipe.user_id = current_user.id if user_signed_in?
    if @recipe.save
      redirect_to recipe_path(@recipe), notice: "投稿完了"
    else
      @recipes = Recipe.all
      render 'index'
    end
  end


  private
  def recipe_params
    params.permit(:title, :body, :instruction, :ingredient, :image, :comment)
  end

end
