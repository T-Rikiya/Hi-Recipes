class Admin::SearchesController < ApplicationController
  before_action :authenticate_admin!
  
  def search
    @range =params[:range]
    @word =params[:word]

    @users = User.looks(params[:search], params[:word])
  end

end
