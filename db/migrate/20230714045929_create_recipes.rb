class CreateRecipes < ActiveRecord::Migration[6.1]
  def change
    create_table :recipes do |t|
      t.integer "user_id"
      t.string  "title",      null: false
      t.text    "body"
      t.text    "instruction" 
      t.text    "ingredient"
      t.timestamps
    end
  end
end
