class Public::UsersController < ApplicationController
  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
    @favorites = Favorite.where(user_id: @user.id).all

  end

  def edit
    @user = User.find(params[:id])
  end
  
  
end
