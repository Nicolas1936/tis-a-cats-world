class CatsController < ApplicationController
  skip_before_action :authenticate_user!, only: :edit

  def favorite
    @cats = current_user.favorited_by_type('Cat')
  end

  def toggle_favorite
    @cat = Cat.find_by(id: params[:id])
    current_user.favorited?(@cat) ? current_user.unfavorite(@cat) : current_user.favorite(@cat)

    render json: { favorited?: current_user.favorited?(@cat) }
  end

  def my_cats
    @cats = Cat.where(user: current_user)
  end

  def index
    if params[:query].present?
      @cats = Cat.search_cats(params[:query])
    else
      @cats = Cat.where(nil) # creates an anonymous scope
      @cats = @cats.filter_by_gender(params[:gender]) if params[:gender].present?
      @cats = @cats.filter_by_breed(params[:breed]) if params[:breed].present?
      @cats = @cats.filter_by_location(params[:location]) if params[:location].present?
      @cats = @cats.filter_by_coat_colour(params[:coat_colour]) if params[:coat_colour].present?
      @cats = @cats.filter_by_estimated_age(params[:estimated_age]) if params[:estimated_age].present?
    end
  end

  def show
    @cat = Cat.find(params[:id])
  end

  def new
    @cat = Cat.new
    redirect_to new_user_session_path if !current_user || !current_user.is_org
  end

  def create
    @cat = Cat.new(cat_params)
    @cat.user = current_user

    cats_authorization(@cat)

    if @cat.save
      redirect_to cats_my_cats_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @cat = Cat.find(params[:id])
    cats_authorization(@cat)
  end

  def update
    @cat = Cat.find(params[:id])
    cats_authorization(@cat)

    cat_param = cat_params
    cat_param.delete(:photos) if cat_param[:photos] == [""]

    if @cat.update(cat_param)
      redirect_to cats_my_cats_path
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @cat = Cat.find(params[:id])
    cats_authorization(@cat)
    @cat.destroy
    redirect_to cats_my_cats_path, status: :see_other
  end

  private

  def cats_authorization(cat)
    redirect_to root_path if (cat.user != current_user) || !current_user.is_org
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
