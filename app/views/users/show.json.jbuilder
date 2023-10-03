json.username @user.username
json.bio @user.bio
json.posts @user.posts do |post|
  json.id post.id
  json.body post.body
  json.created_at post.created_at
end