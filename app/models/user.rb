class User < ApplicationRecord
  validates :rocket_chat_id, presence: true
  validates :email, uniqueness: true

  before_validation :set_rocket_chat_id

  def set_rocket_chat_id
    self.rocket_chat_id = SecureRandom.uuid
  end
end
