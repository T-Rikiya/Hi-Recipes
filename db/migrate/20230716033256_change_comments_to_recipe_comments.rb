class ChangeCommentsToRecipeComments < ActiveRecord::Migration[6.1]
  def change
    rename_table :comments, :recipe_comments
  end
end
