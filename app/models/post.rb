class Post < ApplicationRecord
  belongs_to :user
  has_and_belongs_to_many :hashtags
  after_save :save_hashtags

  private
  
  def save_hashtags
    body.hashtags.each do |name|
      hashtag = Hashtag.find_or_create_by(name: name)
      hashtags << hashtag unless hashtags.include?(hashtag)
    end
  end
end