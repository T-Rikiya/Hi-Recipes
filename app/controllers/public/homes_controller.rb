class Public::HomesController < ApplicationController
  def top
    @random = Recipe.order("RANDOM()").limit(5)
  end

  def about
  end
end
