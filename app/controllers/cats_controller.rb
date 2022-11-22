class CatsController < ApplicationController
  def index
  end

  def top
    @cats = Cat.take(5)
  end

  def new
    @cat = Cat.new
  end

  def create
    @cat = Cat.new(cat_params)
    @cat.user_id = current_user.id
    @cat.save
  end

  def cat_params
    params.require(:cat).permit(:name,
                                :description,
                                :breed,
                                # :location,
                                :photo)
  end
end
