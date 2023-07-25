class Admin::SearchesController < ApplicationController
  
  def search
    @range =params[:range]
    @word =params[:word]

    @users = User.looks(params[:search], params[:word])
  end

end
