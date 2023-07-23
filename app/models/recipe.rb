class Recipe < ApplicationRecord
  has_one_attached :image
  belongs_to :user
  has_many :recipe_comments, dependent: :destroy
  has_many :favorites, dependent: :destroy


  def favorited_by?(user)
    favorites.exists?(user_id: user.id)
  end

  def self.looks(search, word)
    if search == "perfect_match"
      @recipe = Recipe.where("title LIKE?","#{word}")
    elsif search == "forward_match"
      @recipe = Recipe.where("title LIKE?","#{word}%")
    elsif search == "backward_match"
      @recipe = Recipe.where("title LIKE?","%#{word}")
    elsif search == "partial_match"
      @recipe = Recipe.where("title LIKE?","%#{word}%")
    else
      @recipe = Recipe.all
    end
  end

end
