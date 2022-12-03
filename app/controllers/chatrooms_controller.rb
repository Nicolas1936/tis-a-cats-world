class ChatroomsController < ApplicationController
  def show
    @chatroom = Chatroom.find(params[:id])
    @message = Message.new

    if @chatroom.asker != current_user && @chatroom.receiver != current_user
      redirect_to root_path
    end
  end

  def messages
    @is_org = current_user.is_org
    if @is_org
      @chatrooms_connected = Chatroom.where(receiver:current_user)
      @org = ""
    else
      @chatrooms_connected = Chatroom.where(asker:current_user)
      @org = " Organization"
    end

  end
end
