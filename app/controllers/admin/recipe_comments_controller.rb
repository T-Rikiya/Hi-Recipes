class Admin::RecipeCommentsController < ApplicationController
  
  def destroy
    RecipeComment.find(params[:id]).destroy
    redirect_to admin_user_path(params[:user_id])
  end
  
end
