class Public::SearchesController < ApplicationController
  before_action :authenticate_user!


  def search
    @range =params[:range]
    @word =params[:word]
    @recipes = Recipe.looks(params[:search], params[:word])
  end

end

