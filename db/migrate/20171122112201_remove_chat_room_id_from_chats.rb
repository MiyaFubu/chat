class RemoveChatRoomIdFromChats < ActiveRecord::Migration[5.1]
  def change
    remove_column :chats, :chat_room_id, :integer
  end
end
