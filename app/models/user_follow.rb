class UserFollow < ApplicationRecord
  belongs_to :user
  # Single Table Inheritance
  belongs_to :followed_user, class_name: 'User', foreign_key: 'followed_user_id'
end