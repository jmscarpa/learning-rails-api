class Feed

  attr_accessor :user

  def initialize(user)
    @user = user
  end

  def posts
    Post.where(user_id: user.followed_users).order(created_at: :desc)
  end

  def posts_with_hashtag(hashtag)
    # usa 2 query
    # Post.where(id: PostHashtag.where(hashtag_id: hashtag.id).pluck(:post_id))

    # usa 1 query
    Post.joins(:hashtags).where(hashtags: { id: hashtag.id }).order(created_at: :desc)
  end

end