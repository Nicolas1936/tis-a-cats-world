class CatsController < ApplicationController
  skip_before_action :authenticate_user!
  def index
    @cats = Cat.all
  end

  def new
    @cat = Cat.new
  end

  def create
    @cat = Cat.new(cat_params)
    @cat.user_id = current_user.id
    if @cat.save
      redirect_to root_path
    else
      render :new, status: :unprocessable_entity
    end

  end

  def cat_params
    params.require(:cat).permit(:name,
                                :description,
                                :breed,
                                # :location,
                                photos: [])
  end
end
