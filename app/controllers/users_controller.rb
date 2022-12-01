class UsersController < ApplicationController
  before_action :set_user
  def show
    @cats = @user.cats
  end

  def edit
  end

  def update
    @user.update(user_params)
    redirect_to user_path(@user)
  end

  private
  def user_params
    params.require(:user).permit(
      :photo,
      :first_name,
      :last_name,
      :address,
      :description,
      :org_name
    )
  end

  def set_user
    @user = User.find(params[:id])
  end
end
