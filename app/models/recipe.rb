class Recipe < ApplicationRecord
  has_one_attached :image
  belongs_to :user
  has_many :recipe_comments, dependent: :destroy
end
