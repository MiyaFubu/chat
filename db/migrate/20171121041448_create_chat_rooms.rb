class CreateChatRooms < ActiveRecord::Migration[5.1]
  def change
    create_table :chat_rooms do |t|
      t.string :chat_name
      t.integer :room_id

      t.timestamps
    end
  end
end
