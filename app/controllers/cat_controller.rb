class CatController < ApplicationController
  def index
  end

  def top
    @cats = Cat.take(5)
  end
end
