class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update]

  def show

    if !current_user
      redirect_to new_user_session_path
    else

      @cats = @user.cats

      @markers = [{
          lat: @user.latitude,
          lng: @user.longitude,
          image_url: helpers.asset_url("logo_cat.png")
      }]
    end
  end

  def edit
  end

  def update
    if @user.update(user_params)
      redirect_to user_path
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def connect_chatrooms
    receiver = User.find(params[:id])
    asker = current_user

    # if a chatrooms already existe with this reveiver and asker
    chatroom = Chatroom.where(asker:asker, receiver:receiver)

    if chatroom.any?
      # Go inside this chatroom
      redirect_to messages_path(chatroom_id:chatroom.first.id)
    # else
    else
      # Create a new chatroom with this 2 account
      new_chatroom = Chatroom.create!(asker:asker, receiver:receiver)
      # Go inside this new chatroom
      redirect_to messages_path(chatroom_id:new_chatroom.id)
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
      :org_name,
      :org_phone_number
    )
  end

  def set_user
    @user = User.find(params[:id])
  end
end
