class ReviewsController < ApplicationController
  before_action :set_user, only: %i[new create]
  def new
    # We need @restaurant in our `simple_form_for`
    if user_signed_in? && !current_user.is_org?
      @review = Review.new
    else
      redirect_to user_path(@user)
    end
  end

  def create
    @review = Review.new(review_params)
    @review.user = @user
    if @review.save
      redirect_to user_path(@user)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @review = Review.find(params[:id])
    @review.destroy
    redirect_to user_path(@review.user), status: :see_other
  end

  private

  def set_user
    @user = User.find(params[:user_id])
  end

  def review_params
    params.require(:review).permit(:content)
  end
end
