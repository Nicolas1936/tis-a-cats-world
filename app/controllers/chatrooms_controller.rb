class ChatroomsController < ApplicationController
  def show
    @chatroom = Chatroom.find(params[:id])
    @message = Message.new

    if @chatroom.asker != current_user && @chatroom.receiver != current_user
      redirect_to root_path
    end
  end
end
