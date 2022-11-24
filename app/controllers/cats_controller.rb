class CatsController < ApplicationController
  skip_before_action :authenticate_user!
  def index
    @cats = Cat.all
  end

  def show
    @cat = Cat.find(params[:id])
  end

  def new
    @cat = Cat.new
  end

  def create
    @cat = Cat.new(cat_params)
    @cat.user_id = current_user.id
    if @cat.save
      redirect_to cats_path
    else
      render :new, status: :unprocessable_entity
    end

  end

  def cat_params
    params.require(:cat).permit(:name,
                                :description,
                                :breed,
                                :location,
                                :is_vaccinated,
                                :is_neutered,
                                :is_adopted,
                                :estimated_age,
                                :adoption_date,
                                :gender,
                                :coat_colour,
                                photos: [])
  end
end
