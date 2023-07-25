class Recipe < ApplicationRecord
  has_one_attached :image
  belongs_to :user
  has_many :recipe_comments,  dependent: :destroy
  has_many :favorites,        dependent: :destroy
  
  validates :title,       presence: true
  validates :body,        presence: true
  validates :instruction, presence: true
  validates :ingredient,  presence: true

  def favorited_by?(user)
    favorites.exists?(user_id: user.id)
  end

  def self.looks(search, word)
    @recipe = Recipe.where("title LIKE(?) OR ingredient LIKE(?)","%#{word}%","%#{word}%")
  end

end
