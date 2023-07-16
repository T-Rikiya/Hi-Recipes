class Public::UsersController < ApplicationController
  def index
  end

  def show
   @favorites = Favorite.all

  end

  def edit
  end
end
