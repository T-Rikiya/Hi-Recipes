class Admin::UsersController < ApplicationController
  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
    @recipe_comments = @user.recipe_comments
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
   @user = User.find(params[:id])
    @user.update(user_params)
    redirect_to admin_user_path
  end


  private

  def user_params
    params.require(:user).permit(:name, :email, :is_active)
  end
  
  def recipe_params
    params.permit(:title, :body, :instruction, :ingredient, :image, :comment)
  end

end
