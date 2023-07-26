class Public::UsersController < ApplicationController

 before_action :ensure_guest_user, only: [:edit]

  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
    @recipe = @user.recipes.page(params[:page])
    user_favorites_recipe_ids = @user.favorites.pluck(:recipe_id)
    @favorite_recipe = Recipe.find(user_favorites_recipe_ids)
  end

  def edit
    @user = current_user
  end

  def update
   @user = User.find(params[:id])
    @user.update(user_params)
    flash[:notice] = "会員情報を変更しました。"
    redirect_to user_path
  end


  private

  def user_params
    params.require(:user).permit(:name, :email)
  end

  def ensure_guest_user
    if current_user.guest_user?
      redirect_to user_path(current_user), notice: "ゲストユーザーはプロフィール編集できません。"
    end
  end

end
