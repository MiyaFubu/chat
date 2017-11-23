class AddChatRoomIdToChats < ActiveRecord::Migration[5.1]
  def change
    add_column :chats, :chat_room_id, :integer
  end
end
