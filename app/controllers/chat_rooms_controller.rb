class ChatRoomsController < ApplicationController
  def new
    @chat_room = ChatRoom.new
  end

  def index
    @chat_rooms = ChatRoom.all
  end

  def show
    @chat_room = ChatRoom.find(params[:id])
    redirect_to :action => 'index'
  end


  def create
    @chat_room = ChatRoom.new(chat_room_params)
    @chat_room.save
    redirect_to @chat_room
  end

private
  def chat_room_params
    params.require(:chat_room).permit(:chat_name, :room_id)
  end

end
