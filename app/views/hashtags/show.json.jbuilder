json.array! @posts do |post|
  json.id post.id
  json.body post.body
  json.user_id post.user_id
  json.created_at post.created_at
  json.hashtags post.hashtags do |hashtag|
    json.id hashtag.id
    json.name hashtag.name
  end
end