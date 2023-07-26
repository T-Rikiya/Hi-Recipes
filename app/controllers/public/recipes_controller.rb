class Public::RecipesController < ApplicationController

  def new
    @recipe = Recipe.new
  end

  def index
    @recipes = Recipe.page(params[:page])

  end

  def show
    @recipe = Recipe.find(params[:id])
    @comment = RecipeComment.new
  end

  def edit
    @recipe = Recipe.find(params[:id])
  end

  def update
    recipe = Recipe.find(params[:id])
    recipe.update(recipe_params)
    flash[:notice] = "会員情報を変更しました。"
    redirect_to recipe_path(recipe.id)
  end

  def create
    @recipe = Recipe.new(recipe_params)
    @recipe.user_id = current_user.id if user_signed_in?
    if @recipe.save
      redirect_to recipe_path(@recipe), notice: "投稿完了"
    else
      #byebug
      @recipes = Recipe.all
      render 'index'
    end
  end

  def destroy
    recipe = Recipe.find(params[:id])
    recipe.destroy
    redirect_to user_path(current_user.id)
  end





  private
  def recipe_params
    params.require(:recipe).permit(:title, :body, :instruction, :ingredient, :image, :comment)
  end

end
