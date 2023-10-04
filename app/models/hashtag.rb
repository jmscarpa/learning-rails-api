class Hashtag < ApplicationRecord
  has_many :post_hashtags
  has_many :posts, through: :post_hashtags

  scope :with_count, -> { joins(:posts).select("hashtags.*, count(posts.id) as count").group("hashtags.id") }
end

