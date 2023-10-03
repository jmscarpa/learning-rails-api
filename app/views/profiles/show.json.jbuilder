json.username @user.username
json.bio @user.bio
json.posts @user.posts do |post|
  json.id post.id
  json.body post.body
  json.created_at post.created_at
end
json.following @user.followed_users do |user|
  json.user_id user.id
  json.username user.username
  json.username user.bio
end

json.followers @user.followed_by do |user|
  json.user_id user.id
  json.username user.username
  json.username user.bio
end