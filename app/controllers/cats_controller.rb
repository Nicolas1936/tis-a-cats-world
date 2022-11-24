class CatsController < ApplicationController
<<<<<<< HEAD
  skip_before_action :authenticate_user!
  def index
    @cats = Cat.all
=======
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
>>>>>>> a4d8937f8f181ce754cad3c8af1bea8735ce6777
  end
end
