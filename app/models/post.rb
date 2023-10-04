class Post < ApplicationRecord
  has_many :post_hashtags
  has_many :hashtags, through: :post_hashtags

  belongs_to :user
  after_save :save_hashtags

  private
  def save_hashtags
    body.scan(/#\w+/).map{|hashtag| hashtag.tr("#", "")}.each do |name|
      hashtag = Hashtag.find_or_create_by(name: name)
      PostHashtag.find_or_create_by(post: self, hashtag: hashtag)
    end
  end
end