class Admin::SearchesController < ApplicationController
  
  def search
    @range =params[:range]
    @word =params[:word]

    if @range == "User"
      @users = User.looks(params[:search], params[:word])
    else
      @recipes = Recipe.looks(params[:search], params[:word])
    end
  end

end