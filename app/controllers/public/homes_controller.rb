class Public::HomesController < ApplicationController
  
  def top
    # @random = Recipe.order("RANDOM()").limit(5)
    rand = Rails.env.production? ? "rand()" : "RANDOM()"
    @recipes = Recipe.order(rand).limit(15)
  end

  def about
  end
end
