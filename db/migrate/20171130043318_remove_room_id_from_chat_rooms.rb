class RemoveRoomIdFromChatRooms < ActiveRecord::Migration[5.1]
  def change
    remove_column :chat_rooms, :room_id, :integer
  end
end
