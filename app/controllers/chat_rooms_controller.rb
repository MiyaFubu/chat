class ChatRoomsController < ApplicationController
  before_action :authenticate

  def new
    @chat_room = ChatRoom.new
    @user = current_user
  end

  def index
    @chat_rooms = ChatRoom.all
    @user = current_user
  end

  def show
    @chat_room = ChatRoom.find(params[:id])
    @chats = @chat_room.chats
    @user = current_user
  end


  def create
    @user = current_user
    @chat_room = ChatRoom.new(chat_room_params)
    @chat_room.save!
    redirect_to @chat_room
  end

private
  def chat_room_params
    params.require(:chat_room).permit(:chat_name, :chat_room_id)
  end

end
