class Chat < ApplicationRecord
  belongs_to :chat_room,foreign_key: 'room_id'
  belongs_to :user
end
