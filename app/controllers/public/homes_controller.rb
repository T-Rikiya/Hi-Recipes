class Public::HomesController < ApplicationController
  def top
    # @random = Recipe.order("RANDOM()").limit(5)
    rand = Rails.env.production? ? "rand()" : "RANDOM()"
    @random = Recipe.order(rand).limit(5)
  end

  def about
  end
end
