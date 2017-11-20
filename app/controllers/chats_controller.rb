class ChatsController < ApplicationController
  def new
    @chat = Chat.new
  end

  def index
    @chats = Chat.all
  end

  def show
  end

  def create
    @chat = Chat.new(chat_params)
    @chat.save
    redirect_to @chat
  end

  private
    def chat_params
      params.require(:chat).permit(:user_id, :content)
    end

end
