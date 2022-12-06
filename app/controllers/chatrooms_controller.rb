class ChatroomsController < ApplicationController
  def messages
    @is_org = current_user.is_org
    @message = Message.new

    if params[:chatroom_id]
      @current_chatroom = Chatroom.find(params[:chatroom_id])
    end

    if @is_org
      @chatrooms_connected = Chatroom.where(receiver:current_user)
      @org = ""
    else
      @chatrooms_connected = Chatroom.where(asker:current_user)
      @org = " Organization"
    end
  end
end
