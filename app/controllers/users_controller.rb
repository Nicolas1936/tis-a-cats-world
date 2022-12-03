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

  def connect_chatrooms
    receiver = User.find(params[:id])
    asker = current_user

    # if a chatrooms already existe with this reveiver and asker
    chatroom = Chatroom.where(asker:asker, receiver:receiver)

    if chatroom.any?
      # Go inside this chatroom
      redirect_to chatroom_path(chatroom.first)
    # else
    else
      # Create a new chatroom with this 2 account
      new_chatroom = Chatroom.create!(asker:asker, receiver:receiver)
      # Go inside this new chatroom
      redirect_to chatroom_path(new_chatroom)
    # end
    end

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
