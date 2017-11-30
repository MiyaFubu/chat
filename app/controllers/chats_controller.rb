class ChatsController < ApplicationController
  before_action :authenticate

  def new
    @chat = Chat.new
  end

  def edit
  end

  def index
    @chats = Chat.all
  end

  def show
    @chat = Chat.find(params[:id])
    redirect_to action: 'index'
  end

  def create
    chat_room = ChatRoom.find(params[:chat_room_id])

    @chat = Chat.new(chat_params)
    @chat.chat_room = chat_room
    @chat.user = current_user
    @chat.save!

    redirect_to chat_room_path(chat_room)
  end

  private
    def chat_params
      params.require(:chat).permit(:content)
    end

end
