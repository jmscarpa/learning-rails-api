class Hashtag < ApplicationRecord
  has_and_belongs_to_many :posts

  scope :with_count, -> { joins(:posts).select("hashtags.*, count(posts.id) as posts_count").group("hashtags.id") }

  def to_s
    name
  end

end

