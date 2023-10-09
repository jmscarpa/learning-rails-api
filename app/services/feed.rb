class Feed

  attr_accessor :user

  def initialize(user)
    @user = user
  end

  def posts
    ids = user.followed_users.pluck(:id) << user.id
    Post.where(user_id: ids).order(created_at: :desc)
  end

  def posts_with_hashtag(hashtag)
    # usa 2 query
    # Post.where(id: PostHashtag.where(hashtag_id: hashtag.id).pluck(:post_id))

    # usa 1 query
    Post.joins(:hashtags).where(hashtags: { id: hashtag.id }).order(created_at: :desc)
  end

end