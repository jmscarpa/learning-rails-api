class User < ApplicationRecord
  has_many :posts
  has_many :user_follows
  has_many :followed_users, through: :user_follows
  has_many :inverse_user_follows, class_name: 'UserFollow', foreign_key: 'followed_user_id'
  has_many :followed_by, through: :inverse_user_follows, source: :user

  validates :username, presence: true, uniqueness: true


  # @param [User] user
  def follow(user)
    user_follows.create(followed_user: user) unless follows?(user)
  end

  # @param [User] user
  def unfollow(user)
    user_follows.find_by(followed_user: user)&.destroy if follows?(user)
  end

  # @param [User] user
  def follows?(user)
    user_follows.exists?(followed_user: user)
  end
end
