class ChatRoomsController < ApplicationController
  def new
    @chat_room = ChatRoom.new
  end

  def index
    @chat_rooms = ChatRoom.all
  end

  def show
    @chat_room = ChatRoom.find(params[:id])
    @chats = @chat_room.chats
  end


  def create
    @chat_room = ChatRoom.new(chat_room_params)
    @chat_room.save!
    redirect_to @chat_room
  end

private
  def chat_room_params
    params.require(:chat_room).permit(:chat_name, :chat_room_id,:user_id)
  end

end
