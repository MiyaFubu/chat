class User < ApplicationRecord
  has_many :chats

  def encrypt(token)
    Digest::SHA256.hexdigest(token.to_s)
  end
end
